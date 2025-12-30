import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_2
  (n : ℕ) :
  ¬ 7 ∣ (2^n + 1) :=
begin

  intro h,
  have h₁ := nat.mod_eq_zero_of_dvd h,
  have h₂ := nat.mod_eq_zero_of_dvd (nat.mod_add_self (2 ^ n) 7),
  have h₃ := nat.mod_eq_zero_of_dvd (h₂.trans h₁),
  have h₄ := nat.mod_eq_zero_of_dvd (h₃.trans (mod_add_self 1 7)),
  have h₅ := nat.mod_eq_zero_of_dvd (h₄.trans (mod_add_self (2 ^ n) 7)),
  have h₆ := nat.mod_eq_zero_of_dvd (h₅.trans (mod_add_self 1 7)),
  have h₇ := nat.mod_eq_zero_of_dvd (h₆.trans (mod_add_self (2 ^ n) 7)),
  have h₈ := nat.mod_eq_zero_of_dvd (h₇.trans (mod_add_self 1 7)),
  have h₉ := nat.mod_eq_zero_of_dvd (h₈.trans (mod_add_self (2 ^ n) 7)),
  have h₁₀ := nat.mod_eq_zero_of_dvd (h₉.trans (mod_add_self 1
end

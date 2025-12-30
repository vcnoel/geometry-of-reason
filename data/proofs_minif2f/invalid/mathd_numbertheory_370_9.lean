import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_370
  (n : ℕ)
  (h₀ : n % 7 = 3) :
  (2 * n + 1) % 7 = 0 :=
begin

  rw [mod_eq_sub_mod, h₀],
  have h₁ : 6 % 7 = 6,
  { rw mod_eq_sub_mod },
  rw [h₁, zero_add],
  exact eq_zero_of_sub_eq_zero (sub_eq_zero.mpr rfl),

end

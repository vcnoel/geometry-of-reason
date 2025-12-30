import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1964_p1_1
  (n : ℕ)
  (h₀ : 7 ∣ (2^n - 1)) :
  3 ∣ n :=
begin

  cases n,
  { cases h₀ },
  { have h₁ := nat.mod_add_self 1 (2^n - 1) 7,
    have h₂ := nat.mod_add_self 1 (2^n - 1) 3,
    have h₃ := nat.mod_add_self 1 (2^n - 1) 9,
    have h₄ := nat.mod_add_self 1 (2^n - 1) 18,
    have h₅ := nat.mod_add_self 1 (2^n - 1) 27,
    have h₆ := nat.mod_add_self 1 (2^n - 1) 54,
    have h₇ := nat.mod_add_self 1 (2^n - 1) 81,
    have h₈ := nat.mod_add_self 1 (2^n - 1) 162,
    have h₉ := nat.mod_add_self 1 (2^n - 1) 243,
    have h₁₀ := nat.mod_add_self 1 (2^n - 1) 486,
    have h₁₁ := nat.mod_add_self 1 (2^n - 1) 729,
    have h₁₂ :=
end

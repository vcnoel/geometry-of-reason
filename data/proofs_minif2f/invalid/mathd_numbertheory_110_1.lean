import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  cases h₀ with ha hb hb' with _ _ _,
  cases hb' with _ hb,
  have h₃ := mod_add_eq_mod_mul (a * b) (a + b) (a % 10),
  have h₄ := mod_add_eq_mod_mul (2 * a + b) (a + b) (a % 10),
  have h₅ := mod_add_eq_mod_mul (a + b) (2 * a + b) (b % 10),
  have h₆ := mod_add_eq_mod_mul (a + b) (2 * a + b) (b),
  have h₇ := mod_add_eq_mod_mul (a + b) (2 * a + b) (a),
  have h₈ := mod_add_eq_mod_mul (2 * a + b) (a + b) (a),
  have h₉ := mod_add_eq_mod_mul (a + b) (2 * a + b) (a),
  have h₁₀ := mod_add_eq_mod_mul (a + b) (2 * a + b) (a),
  have h₁₁ := mod_add_eq_mod_mul (a + b) (2 * a
end

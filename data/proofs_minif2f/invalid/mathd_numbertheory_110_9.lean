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

  apply_modulo 10,
  rw [← add_sub_cancel a b, ← add_assoc (2 * a) a b, ← add_assoc a b b],
  congr,
  cases h₀ with h₀ h₀,
  exact_mod_cast (h₁ ▸ h₂),

end

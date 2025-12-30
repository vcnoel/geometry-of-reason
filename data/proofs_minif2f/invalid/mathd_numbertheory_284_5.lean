import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_284
  (a b : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9)
  (h₁ : 10 * a + b = 2 * (a + b)) :
  10 * a + b = 18 :=
begin

  cases h₀ with ha hb,
  cases hb with hb₁ hb₂,
  cases hb₂ with hb₂₁ hb₂₂,
  rw hb₂₂ at h₁,
  rw ha at h₁,
  have h₂ : 10 * a + b = 18,
  from h₁,
  exact h₂,

end

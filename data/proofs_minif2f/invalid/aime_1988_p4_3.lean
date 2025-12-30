import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p4
  (n : ℕ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, abs (a n) < 1)
  (h₁ : ∑ k in finset.range n, (abs (a k)) = 19 + abs (∑ k in finset.range n, a k)) :
  20 ≤ n :=
begin

  have h₂ := abs_nonneg (abs (∑ k in finset.range n, a k)),
  have h₃ := finset.sum_abs_le_sum_abs h₀ n,
  have h₄ := le_of_eq h₁ h₃,
  have h₅ := abs_sub _ _,
  have h₆ := le_trans h₄ h₅,
  have h₇ := add_le_add h₆ h₂,
  have h₈ := le_of_not_gt h₇,
  have h₉ := not_le.mp h₈ n,
  have h₁₀ := le_of_not_gt h₉ n,
  exact h₁₀,

end

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

  have h₂ : ∀ k, abs (a k) < 1,
  { intro k,
    exact h₀ k },
  have h₃ : ∑ k in finset.range n, (abs (a k)) ≤ ∑ k in finset.range n, 1,
  { apply finset.sum_le_sum (λ (k : ℕ), (h₂ k)) },
  have h₄ : ∑ k in finset.range n, 1 = n,
  { apply finset.sum_constant (λ (k : ℕ), 1) },
  have h₅ : ∑ k in finset.range n, (abs (a k)) ≤ n,
  { exact le_trans h₃ h₄ },
  have h₆ : 19 + abs (∑ k in finset.range n, a k) ≤ n,
  { exact le_trans (le_add_of_nonneg_left 19) h₅ },
  have h₇ : abs (∑ k in finset_range n, a k) ≤ n,
  { apply le_of_add_le_left 19 h₆ },
  have h₈ : -n ≤ ∑ k in finset_range n, a k,

end

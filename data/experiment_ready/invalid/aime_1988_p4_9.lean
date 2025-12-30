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

  by_cases n = 0,
  { case this =>
    have h₂ : 19 + 0 = 19,
    { rw [finset.range_zero, finset.sum_zero] },
    have h₃ : 19 = 19,
    { rw [h₂] },
    have h₄ : 20 ≤ 0,
    { linarith },
    exact h₄ },
  { case this =>
    have h₂ : ∀ k in finset.range n, abs (a k) < 1,
    { intros k hk,
      exact h₀ k },
    have h₃ : ∑ k in finset.range n, abs (a k) < ∑ k in finset.range n, 1,
    { exact finset.sum_abs_le_sum_abs h₂ },
    have h₄ : ∑ k in finset.range n, abs (a k) = 19,
    { rw [h₁] },
    have h₅ : 19 < ∑ k in finset.range n, 1,
    { exact lt_sum_of_pos (λ k hk, one_pos) h₄ },
    have h₆ : n < ∑ k in finset.range n
end

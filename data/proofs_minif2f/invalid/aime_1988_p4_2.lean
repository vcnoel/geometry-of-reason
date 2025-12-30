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

  intro n,
  intro a,
  intro h₀,
  intro h₁,
  induction n with n IH,
  { rw finset.range_zero at h₁,
    simp only [finset.sum_empty, zero_add, abs_zero] at h₁,
    exact absurd h₁ (by simp [finset.sum_empty, zero_add, abs_zero]) },
  { have h₂ : ∑ k in finset.range n.succ, (abs (a k)) = ∑ k in finset.range n, (abs (a k)) + abs (a n.succ),
    by { rw [finset.sum_add_one], exact h₁ },
    have h₃ : ∑ k in finset.range n, (abs (a k)) < 19 + abs (∑ k in finset.range n, a k),
    by { exact h₁ },
    have h₄ : 19 + abs (∑ k in finset.range n, a k) < 19 + 20,
    by { apply add_lt_add_of_lt_of_nonneg, apply h₃, simp },
    have h₅ : abs (∑ k in finset.range n.succ, a k) < 20,
   
end

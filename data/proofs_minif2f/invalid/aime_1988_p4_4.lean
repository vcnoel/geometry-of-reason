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

  -- We will prove the claim by induction on n.
  -- We start by proving the base case.
  have h₂ : ∀ (n : ℕ), 20 ≤ n → ∑ k in finset.range n, a k = 0,
  { intro n,
    cases n,
    { exact 0 },
    { intro h₃,
      have h₄ : a 0 = 0,
      { rw h₁,
        have h₅ : (abs (a 0)) = 19 + abs (∑ k in finset.range n.succ, a k),
        { rw finset.range_succ,
          rw finset.sum_insert (finset.mem_range.2 rfl) },
        have h₆ : abs (a 0) = 19 + abs (∑ k in finset.range n, a k),
        { rw h₅ },
        have h₇ : 19 = abs (a 0),
        { rw h₆ },
        have h₈ : a 0 = 0,
        { exact abs_of_neg (neg_of_abs_eq (neg_of_eq h₇)) },
        exact h₈ } },
  have h₃ : 20 ≤ n
end

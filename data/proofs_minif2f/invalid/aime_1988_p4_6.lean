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

  cases n,
  { rw finset.sum_empty,
    simp [h₁] },
  { have h₂ : ∑ k in finset.range (n - 1), (abs (a k)) < 19,
    by { apply finset.sum_lt_sum_of_subset,
        use finset.range (n - 1),
        intros k hk,
        apply h₀ },
    have h₃ : (abs (a n)) < 1,
    by { apply h₀ },
    have h₄ : 19 < ∑ k in finset.range (n - 1), (abs (a k)),
    by { apply lt_of_le_of_lt,
        apply finset.sum_le_sum_of_subset,
        use finset.range (n - 1),
        intros k hk,
        apply h₀ },
    have h₅ : 19 < 19 + abs (∑ k in finset.range (n - 1), a k),
    by { apply add_lt_add_left, apply h₄ },
    have h₆ : 19 + abs (∑ k in finset.range (n - 1), a k) < 19 + 19 + 1,
    by { apply add
end

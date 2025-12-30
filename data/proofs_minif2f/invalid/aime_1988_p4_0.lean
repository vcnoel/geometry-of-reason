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

  apply le_trans (le_of_eq _),
  { rw finset.sum_congr rfl (λ k hk, h₁ k),
    refine le_of_eq _,
    apply finset.sum_congr rfl (λ k hk, _),
    { exact abs_le.2 (h₀ k) },
    { apply finset.sum_le_sum },
    apply le_of_eq _,
    refine finset.sum_congr rfl (λ k hk, _),
    { exact abs_le.2 (h₀ k) },
    { apply finset.sum_le_sum },
  },
  { apply finset.sum_le_sum },

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p21
  (u : ℕ → ℕ)
  (h₀ : u 0 = 4)
  (h₁ : u 1 = 7)
  (h₂ : ∀ n ≥ 2, u (n + 2) = (u n + u (n + 1)) % 10) :
  ∀ n, ∑ k in finset.range(n), u k > 10000 → 1999 ≤ n :=
begin

  intro n,
  intro h,
  by_cases n ≤ 1999,
  { exact le_of_not_gt h },
  { push_neg at h,
    have h₁ := finset.sum_range_le_sum (finset.range 1999) (finset.range n) (λ k, u k),
    have h₂ := finset.sum_range_le_sum (finset.range 1999) (finset.range n) (λ k, 0),
    have h₃ := add_le_add (finset.sum_range_le_sum (finset.range 1999) (finset.range (n - 1999)) (λ k, u (1999 + k)))
      (finset.sum_range_le_sum (finset.range 1999) (finset.range (n - 1999)) (λ k, u k)),
    have h₄ := add_le_add (finset.sum_range_le_sum (finset.range 1999) (finset.range (n - 1999)) (λ k, 0))
      (finset.sum_range_le_sum (finset.range 1999) (finset.range (n - 1999)) (λ k, 0)),
    have h�
end

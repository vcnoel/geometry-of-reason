import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_prod1toneq1_sum1tongeqn
  (a : ℕ → nnreal)
  (n : ℕ)
  (h₀ : finset.prod (finset.range(n)) a = 1) :
  finset.sum (finset.range(n)) a ≥ n :=
begin

  have h₁ : ∀ k, a k ≥ 1, from
    λ k, (finset.prod_le_one (finset.range(n)) a (λ i hi, a i ≥ 1)).ge,
  have h₂ : ∀ k, a k > 0, from
    λ k, lt_of_le_of_ne (h₁ k) (ne_of_gt (finset.prod_pos (finset.range(n)) a)),
  have h₃ : ∀ k, a k ≤ 1, from
    λ k, (finset.prod_le_one (finset.range(n)) a (λ i hi, a i ≤ 1)).le,
  have h₄ : ∀ k, a k ≥ a k - 1, from
    λ k, sub_nonneg_of_le (h₃ k) (h₁ k),
  have h₅ : finset.sum (finset.range(n)) (a - 1) = n - 1, from
    finset.sum_const_sub_one n,
  have h₆ : finset.sum (finset.range(n)) a ≥ finset.sum (finset.range(n)) (a - 1), from
    finset.sum_le_sum
end

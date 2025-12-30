import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  -- Rewrite the sum as a sum over all k in [1, 119] where k is an integer
  rw finset.sum_congr rfl (λ k hk, by { exact k }),
  -- Simplify the left-hand side
  rw finset.Icc_subset_Ico (λ k hk, by { exact k }) (λ k hk, by { exact k }),
  -- Apply the property of absolute value
  rw abs_of_nonneg,
  -- Use the fact that k * x is an integer for all k in [1, 119]
  have h_k_x_int : ∀ k ∈ finset.Icc 1 119, k * x ∈ ℤ,
  { intro k,
    by_contradiction,
    assume h_k_x_not_int : ¬ k * x ∈ ℤ,
    have h_k_x_not_rat : ¬ k * x ∈ ℚ,
    { intro h_k_x_rat,
      have h_k_x_int : k * x ∈ ℤ,
      { rw ← h_k_x_rat,
        exact int.of_rat _ },
      exact h_k_x_not_int h_k_x_int },
    have h_k_x_not_finset : ¬ k * x ∈ finset.Icc 
end

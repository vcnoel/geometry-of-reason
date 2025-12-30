import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_149
  (f : ℝ → ℝ)
  (h₀ : ∀ x < -5, f x = x^2 + 5)
  (h₁ : ∀ x ≥ -5, f x = 3 * x -8)
  (h₂ : fintype (f⁻¹' {10})) :
  ∑ k in (f⁻¹' {10}).to_finset, k = 6 :=
begin

  -- First, we know that f(x) = 10 has exactly 6 solutions.
  -- This is because f is a piecewise function, and we have shown that
  -- the solutions to f(x) = 10 are exactly the solutions to x^2 + 5 = 10
  -- and the solutions to 3x - 8 = 10, which are -5 and 6, respectively.
  -- Therefore, we can conclude that the sum of the solutions to f(x) = 10
  -- is equal to 6.
  rw [finset.sum_eq_multiset_sum, fintype.coe_to_finset, multiset.sum_single_of_mem],
  { exact (f⁻¹' {10}).to_finset.some_mem },

end

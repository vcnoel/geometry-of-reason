import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_55
  (q p : ℝ)
  (h₀ : q = 2 - 4 + 6 - 8 + 10 - 12 + 14)
  (h₁ : p = 3 - 6 + 9 - 12 + 15 - 18 + 21) :
  q / p = 2 / 3 :=
begin

  -- We can rewrite the division of two numbers as a multiplication by the reciprocal
  have h₂ : q / p = q * (1 / p),
    by { rw div_eq_mul_inv, },
  -- We can rewrite the reciprocal of a number as the sum of an infinite geometric series
  have h₃ : 1 / p = ∑ (n : ℕ) (i : 5), (-(1/3))^n,
    by { rw real.inv_eq_sum_geometric_series, },
  -- We can rewrite the sum of an infinite geometric series as a fraction
  have h₄ : ∑ (n : ℕ) (i : 5), (-(1/3))^n = -(1/3) / (1 - (-(1/3))),
    by { rw sum_geometric_series, },
  -- We can simplify the fraction
  have h₅ : -(1/3) / (1 - (-(1/3))) = 1/2,
    by { field_simp, },
  -- We can rewrite the product of two numbers as a product of two fractions
  have h₆ : q * (1 / p) = (2 - 4 + 6
end

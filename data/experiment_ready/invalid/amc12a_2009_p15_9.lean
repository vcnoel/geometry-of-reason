import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p15
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∑ k in finset.Icc 1 n, (↑k * (complex.I^k)) = 48 + 49 * complex.I) :
  n = 97 :=
begin

  -- h₁ is a summation of the complex number (k * I^k) over the interval [1, n].
  -- We can use the formula for the sum of a geometric series to simplify this expression.
  have h₂ : ∑ k in finset.Icc 1 n, (↑k * (complex.I^k)) = ∑ k in finset.Icc 1 n, (complex.I^k) * k,
  { rw complex.I_pow_eq_real if (n - 1) ≥ k then k else 0,
    -- If n - 1 ≥ k, then k * I^k = k * (±1)^(n - k) = k * (±1)^(n - k).
    -- We can use this to simplify the summation.
    have h₃ : ∀ k in finset.Icc 1 n, (complex.I^k) * k = (±1)^(n - k) * k,
    { intro k,
      rw complex.I_pow_eq_real,
      rw real.pow_neg_eq if (n - 1) ≥ k then k else 0,
      rw real.pow_neg_eq if (n - 1) ≥ k
end

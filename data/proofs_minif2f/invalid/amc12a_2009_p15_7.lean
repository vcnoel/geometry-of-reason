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

  -- By definition of sum, we have that ∑ k in finset.Icc 1 n, (↑k * (complex.I^k)) =
  --   ∑ k in finset.Icc 1 (n - 1), (↑k * (complex.I^k)) + (↑n * (complex.I^n)).

  -- We know that ∑ k in finset.Icc 1 (n - 1), (↑k * (complex.I^k)) = 48 + 49 * complex.I.

  -- Therefore, ∑ k in finset.Icc 1 n, (↑k * (complex.I^k)) = (48 + 49 * complex.I) + (↑n * (complex.I^n)).

  -- By definition of equality of complex numbers, we have that (48 + 49 * complex.I) + (↑n * (complex.I^n)) =
  --   48 + 49 * complex.I if and only if ↑n * (complex.I^n) = 0.

  -- We know that ↑n * (complex.I^n) = 0 if and only if ↑n * (complex.I^n) = 0.

  -- Therefore
end

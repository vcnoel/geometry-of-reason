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

  have h₂ : ∑ k in finset.Icc 1 n, (k * (complex.I^k)) = 48 + 49 * complex.I,
    from h₁,
  have h₃ : ∑ k in finset.Icc 1 n, (k * (complex.I^k)) = ∑ k in finset.Icc 1 n, ((n + 1 - k) * (complex.I^(n + 1 - k))),
    from finset.sum_congr_arg (λ k, (n + 1 - k) * (complex.I^(n + 1 - k)) = k * (complex.I^k)),
  have h₄ : ∑ k in finset.Icc 1 n, ((n + 1 - k) * (complex.I^(n + 1 - k))) = ∑ k in finset.Icc 1 n, (k * (complex.I^k)),
    from h₃,
  have h₅ : ∑ k in finset.Icc 1 n, ((n + 1 - k) * (complex.I^(n + 1 - k))) = ∑ k in finset.Icc 1 n
end

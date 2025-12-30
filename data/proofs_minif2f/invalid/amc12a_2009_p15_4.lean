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

  have h₂ : ∀ k in finset.Icc 1 n, (k * (complex.I^k)) = k * complex.I^k,
  { intros k hk,
    exact rfl },

  have h₃ : ∀ k in finset.Icc 1 n, (complex.I^k) = (complex.I^(k-1)) * complex.I,
  { intros k hk,
    exact (pow_one complex.I)^(k-1) * pow_one complex.I },

  have h₄ : ∀ k in finset.Icc 1 n, (k * (complex.I^k)) = (k * (complex.I^(k-1))) * complex.I,
  { intros k hk,
    exact (h₃ k hk) * k },

  have h₅ : ∀ k in finset.Icc 1 n, (k * (complex.I^(k-1))) = k * complex.I^(k-1),
  { intros k hk,
    exact rfl },

  have h₆ : ∀ k in finset.Icc 1 n, (k * complex.I^(k-1)) = (k * complex.I) * complex.I^(k-1),
  { intros k
end

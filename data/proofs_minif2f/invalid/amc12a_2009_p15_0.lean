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

  have h₂ : ∀ k in finset.Icc 1 n, (complex.I ^ k) = complex.I * (complex.I ^ (k - 1)),
    by { intros, simp only [pow_one, sub_self, complex.I_pow], },
  have h₃ : ∀ k in finset.Icc 1 n, (k * (complex.I ^ k)) = (k * complex.I) * (complex.I ^ (k - 1)),
    by { intros, simp only [h₂], },
  have h₄ : ∀ k in finset.Icc 1 n, (k * (complex.I ^ k)) = (k * complex.I) * (complex.I ^ (k - 1)),
    by { intros, simp only [h₂], },
  have h₅ : ∑ k in finset.Icc 1 n, (k * (complex.I ^ k)) = (∑ k in finset.Icc 1 n, (k * complex.I)) * (∑ k in finset.Icc 0 (n - 1), (complex.I ^ k)),
    by { apply sum_product, },
  have h₆ : (∑ k in finset.I
end

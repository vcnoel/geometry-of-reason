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

  have h₂ : ∀ k in finset.Icc 1 n, (complex.I^k) = (complex.I^(k - 1)) * complex.I,
  { intro k,
    apply pow_one,
    apply pow_add,
    refl },
  have h₃ : ∀ k in finset.Icc 1 n, (k * (complex.I^k)) = k * (complex.I^(k - 1)) * complex.I,
  { intro k,
    apply mul_assoc },
  have h₄ : ∀ k in finset.Icc 1 n, (k * (complex.I^k)) = k * complex.I * (complex.I^(k - 1)),
  { intro k,
    apply h₃ },
  have h₅ : ∀ k in finset.Icc 1 n, (k * (complex.I^k)) = k * complex.I * (complex.I^((k - 1))),
  { intro k,
    apply h₄ },
  have h₆ : ∀ k in finset.Icc 1 n, (k * (complex.I^k)) = k * complex.I * (complex.I^(k - 1)),
  { intro k,
   
end

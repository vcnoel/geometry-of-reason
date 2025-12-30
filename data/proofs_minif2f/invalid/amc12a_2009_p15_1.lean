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

  -- We start by considering the imaginary part of the sum.
  have h₂ : ∀ (k : ℕ), 1 ≤ k ≤ n → (complex.I^k).imag = 0,
  { intros k h₃,
    -- If k is even, then we have a product of complex numbers with no imaginary part.
    { cases k with k _,
      { simp only [pow_two, complex.I_pow_two, complex.I_pow_zero, complex.I_zero, complex.I_mul_I, mul_zero, zero_mul, zero_add, add_zero] },
      { rw [pow_two] at h₃,
        cases h₃ with _ h₄,
        { contradiction },
        { have h₅ : k = 0, by { rw [eq_iff_le_not_lt, zero_le] at h₄, exact h₄ },
          cases h₅ with _ h₆,
          { contradiction },
          { have h₇ : k = 0, by { rw [eq_iff_le_not_lt, zero_le] at h₆, exact h₆ },
            cases h₇ with _ h₈,
            { contradiction },
            { exact h₈ } } } },
    -- If k
end

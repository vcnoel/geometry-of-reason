import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_192
  (q e d : ℂ)
  (h₀ : q = 11 - (5 * complex.I))
  (h₁ : e = 11 + (5 * complex.I))
  (h₂ : d = 2 * complex.I) :
  q * e * d = 292 * complex.I :=
begin

  have h₃ : q * e = 121 - 25 * (complex.I ^ 2),
  { rw h₀,
    rw h₁,
    simp only [complex.I_mul_I, complex.I_sq, complex.I_mul_neg, complex.I_neg, complex.I_add],
    simp only [complex.I_pow_two],
    ring_nf },
  have h₄ : q * e * d = (121 - 25 * (complex.I ^ 2)) * 2 * complex.I,
  { rw h₃ },
  have h₅ : q * e * d = 242 * complex.I - 50 * (complex.I ^ 3),
  { simp only [h₄, complex.I_mul_I, complex.I_pow_three, complex.I_mul_neg, complex.I_neg, complex.I_add, complex.I_pow_two],
    ring_nf },
  have h₆ : q * e * d = 242 * complex.I - 50 * (complex.I ^ 3),
  { simp only [h₅, complex.I_pow_three, complex.I_pow_two, complex.I_mul_I] },
  have h₇ : q * e * d = 242 * complex.I - 50 * (-1 *
end

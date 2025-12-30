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

  rw [h₀, h₁, h₂],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I_mul_I, complex.I_mul_creal, complex.I_mul_neg_creal],
  ring_nf,
  simp only [complex.I
end

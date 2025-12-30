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

  apply mul_assoc,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,
  apply complex_conjugate_mul_complex_I_conjugate,
  apply mul_complex_I_conjugate,

end

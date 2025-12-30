import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_110
  (q e : ℂ)
  (h₀ : q = 2 - 2 * complex.I)
  (h₁ : e = 5 + 5 * complex.I) :
  q * e = 20 :=
begin
  rw [h₀, h₁],
  ring_nf,
  rw [pow_two, complex.I_mul_I],
  ring,
end
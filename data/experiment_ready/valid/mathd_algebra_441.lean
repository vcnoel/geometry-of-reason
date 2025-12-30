import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_441
  (x : ℝ)
  (h₀ : x ≠ 0) :
  12 / (x * x) * (x^4 / (14 * x)) * (35 / (3 * x)) = 10 :=
begin
  field_simp,
  ring_nf,
end
import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_89
  (b : ℝ)
  (h₀ : b ≠ 0) :
  (7 * b^3)^2 * (4 * b^2)^(-(3 : ℤ)) = 49/64 :=
begin
  ring_nf,
  field_simp,
  norm_cast,
  refine (div_eq_iff _).mpr _,
  { norm_num,
    assumption },
  ring,
end
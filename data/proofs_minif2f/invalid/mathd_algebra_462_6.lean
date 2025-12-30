import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_462 :
  ((1 : ℚ)/ 2 + 1 / 3) * (1 / 2 - 1 / 3) = 5 / 36 :=
begin

  ring_nf,
  simp only [mul_sub, add_sub_cancel, mul_one, sub_zero],
  ring_nf,
  refl,

end

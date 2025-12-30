import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  let sqrt_27 := real.sqrt 27,
  let sqrt_26 := real.sqrt 26,

  have sqrt_27_gt_sqrt_26 := sqrt_27 > sqrt_26,
  have sqrt_27_ge_sqrt_26 := sqrt_27 ≥ sqrt_26,

  have sqrt_27_ge_5 := sqrt_27 ≥ 5,
  have sqrt_27_le_6 := sqrt_27 ≤ 6,

  have sqrt_26_lt_5 := sqrt_26 < 5,
  have sqrt_26_lt_6 := sqrt_26 < 6,

  have ceil_sqrt_27 = 6 := int.ceil_eq_of_floor_lt sqrt_27_gt_sqrt_26,
  have floor_sqrt_26 = 5 := int.floor_eq_of_floor_lt sqrt_26_lt_5,

  show int.ceil sqrt_27 - int.floor sqrt_26 = 1,
  by rw [ceil_sqrt_27, floor_sqrt_26, sub_sub_cancel_left],

end

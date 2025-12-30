import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  -- First, we calculate the square roots of 26 and 27
  let sqrt_26 : ℝ := sqrt 26,
  let sqrt_27 : ℝ := sqrt 27,

  -- Then, we calculate their integer parts
  let floor_sqrt_26 : ℤ := floor sqrt_26,
  let ceil_sqrt_27 : ℤ := ceil sqrt_27,

  -- Now, we calculate the difference between the integer parts of the square roots
  let diff : ℤ := ceil_sqrt_27 - floor_sqrt_26,

  -- The proof is completed by showing that the difference is equal to 1
  by simp [floor_sqrt_26, ceil_sqrt_27, sqrt_26, sqrt_27, diff]

end

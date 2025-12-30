import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_22 :
  real.logb (5^2) (5^4) = 2 :=
begin

  calc real.logb (5^2) (5^4) = real.logb (5^2) (5^2 * 5^2) : by {rw real.logb_mul}
 ... = real.logb (5^2) (5^2) + real.logb (5^2) (5^2) : by {rw real.logb_mul}
 ... = 2 * real.logb (5^2) (5^2) : by {rw real.mul_assoc}
 ... = 2 * 2 : by {rw real.logb_refl}
 ... = 4 : by {rw real.mul_two}

end

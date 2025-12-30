import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_200 :
  139 % 11 = 7 :=
begin

  calc
    139 % 11 = 139 - 11 * (139 / 11) : by rw div_trunc_eq_sub_mul
   ... = 139 - 11 * 12 : by { apply eq.subst, apply div_trunc_eq_sub_mul, exact (139/11).val }
   ... = 139 - 132 : by { apply eq.subst, apply mul_zero, exact 11*12 }
   ... = 7 : by ring

end

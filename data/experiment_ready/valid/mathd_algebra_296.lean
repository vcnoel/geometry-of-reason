import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_296 :
  abs (((3491 - 60) * (3491 + 60) - 3491^2):ℤ) = 3600 :=
begin
  rw abs_of_nonpos,
  norm_num,
  norm_num,
end
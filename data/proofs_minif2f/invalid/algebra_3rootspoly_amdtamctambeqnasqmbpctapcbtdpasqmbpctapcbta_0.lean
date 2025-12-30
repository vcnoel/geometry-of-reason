import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  apply lt_rac,
  assume x : ℂ,
  apply lt_rac (a - x) * (a - x) * (a - x),
  apply lt_rac (a - x) * (a - x) * (a - (x + d)),
  
end

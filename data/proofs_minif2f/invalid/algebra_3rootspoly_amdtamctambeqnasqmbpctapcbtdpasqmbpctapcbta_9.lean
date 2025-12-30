import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  simpl_left (a - d) * (a - c) * (a - b),
  simpl_left (a - d) * ((a^2 - (b + c) * a + c * b) * a - c),
  simpl_left (a - d) * ((a^2 - (b + c) * a - c * b) * a + c),
  
end

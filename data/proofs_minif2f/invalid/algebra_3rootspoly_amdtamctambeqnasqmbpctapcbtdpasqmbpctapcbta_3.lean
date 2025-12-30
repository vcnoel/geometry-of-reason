import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  let f := (a - d) * (a - c) * (a - b) in
  let g := -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a in
  f * g = (-((a^2 - (b + c) * a) + c * b) * d) * (a - c) * (a - b) + ((a^2 - (b + c) * a) + c * b) * (a - d) * (a - c) * (a - b)
  
end

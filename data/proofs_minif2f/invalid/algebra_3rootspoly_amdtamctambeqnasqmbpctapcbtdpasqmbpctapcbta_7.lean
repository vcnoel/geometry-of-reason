import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  let (r s t u v) := real_sqrt_poly a,
  let (x y z w v) := real_sqrt_poly b,
  let (p q r s) := real_sqrt_poly c,
  let (a' b' c' d') := real_sqrt_poly a,
  let (t' u' v' w' x' y' z' w') := real_sqrt_poly b,
  let (p'' q'' r'' s'' t'' u'' v'' w'' x'' y'' z'' w''') := real_sqrt_poly c,
  let (t''_1 u''_1 v''_1 w''_1 x''_1 y''_1 z''_1 w''_1' := real_sqrt_poly a),
  let (t''_2 u''_2 v''_2 w''_2 x''_2 y''_2 z''_2 w''_2' := real_sqrt_poly a),
  let (t''_3 u''_3 v''_3 w''_3 x''_3 y''_3 z''_3 w''_3' := real_sqrt_poly a),
  let (t''_4 u''_
end

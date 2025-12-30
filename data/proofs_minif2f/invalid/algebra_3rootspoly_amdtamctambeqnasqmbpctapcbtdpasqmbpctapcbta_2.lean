import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  let x = a - d, y = a - c, z = a - b in
  [x * x, y * y, z * z]
   .sub_eq (x * x * x) (y * y * y * y * y)
   .sub_eq (x * x * x * x * x) (y * y * y * y * y * y)
   .sub_eq (x * x * x * x * x * x) (z * z * z * z * z),
  let u = x * x, v = y * y, w = z * z in
  [u * u, v * v, w * w]
   .sub_eq (u * u * u) (v * v * v * v)
   .sub_eq (u * u * u * u) (v * v * v * v * v)
   .sub_eq (u * u * u * u * u) (w * w * w * w * w),
  let x1 = u * u, y1 = v * v, z1 = w * w in
  [x1 * x1, y1 * y1,
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  let x := a - d,
  let y := a - c,
  let z := a - b,
  let p := x * y * z,
  let q := x * y * z * d,
  let r := x * y * z * c,
  let s := x * y * z * b,
  let t := x * y * z * a,
  let u := x * y * z * a * c,
  let v := x * y * z * a * b,
  let w := x * y * z * a * b * c,
  let w1 := x * y * z * a * b * c * d,
  let w2 := x * y * z * a * b * c * a,
  let w3 := x * y * z * a * b * c * a * c,
  let w4 := x * y * z * a * b * c * a * b,
  let w5 := x * y * z * a * b * c * a * b * c,
  let w6 := x * y * z * a * b * c * a * b * c * d,
  let
end

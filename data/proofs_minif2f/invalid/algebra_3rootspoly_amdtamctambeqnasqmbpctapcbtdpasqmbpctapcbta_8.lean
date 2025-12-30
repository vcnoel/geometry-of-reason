import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_3rootspoly_amdtamctambeqnasqmbpctapcbtdpasqmbpctapcbta
  (b c d a : ℂ) :
  (a - d) * (a - c) * (a - b) = -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a :=
begin

  all_goals
  let x := a - d,
  let y := a - c,
  let z := a - b,
  let p := a^2 - (b + c) * a + c * b,
  let q := -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c) * a + c * b) * a,
  let r := -p * x + q * y,
  let s := -p * y + q * x,
  let t := p * x + q * y,
  let u := p * y + q * x,
  let v := -p * y + q * x,
  let w := p * x + q * y,
  let x1 := a - c,
  let y1 := a - b,
  let z1 := a - d,
  let p1 := a^2 - (b + c) * a + c * b,
  let q1 := -(((a^2 - (b + c) * a) + c * b) * d) + (a^2 - (b + c)
end

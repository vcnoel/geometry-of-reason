import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3div2tooddnp1
  (n : ℕ) :
  3 ∣ (2^(2 * n + 1) + 1) :=
begin

  let a = 2^(2 * n + 1) + 1,
  let b = 3 * a,
  let c = b / 3,
  let d = 3 * c,
  let e = 2^(2 * n + 1) + 1,
  let f = 2 * e,
  let g = 3 * f,
  let h = 3 * g,
  let i = 2^(2 * n) + 1,
  let j = 3 * i,
  let k = 2 * j,
  let l = 3 * k,
  let m = 2 * l,
  let n = 3 * m,
  let p = 2^(2 * n) + 1,
  let q = 2 * p,
  let r = 3 * q,
  let s = 2 * r,
  let t = 3 * s,
  let u = 2 * t,
  let v = 3 * u,
  let w = 2 * v,
  let x = 3 * w,
  let y = 2 * x,
  let z = 3 * y,
 
end

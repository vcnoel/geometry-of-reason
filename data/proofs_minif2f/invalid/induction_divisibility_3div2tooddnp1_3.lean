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
  let b = 3,
  let p = gcd a b,
  let q = a / b,
  let r = b / a,
  let s = a / b,
  let t = b / a,
  let u = gcd (a * b * p) s,
  let v = gcd (a * b * q) t,
  let w = gcd (b * p * r) u,
  let x = gcd (b * p * r) v,
  let y = gcd (b * p * u) w,
  let z = gcd (b * p * v) x,
  let a1 = gcd (a * b * q * s) u,
  let a2 = gcd (a * b * q * t) v,
  let a3 = gcd (a * b * q * u) x,
  let a4 = gcd (a * b * q * v) y,
  let a5 = gcd (a * b * q * w) z,
  let a6 = gcd (b * p * r * u) x,
  let a7 =
end

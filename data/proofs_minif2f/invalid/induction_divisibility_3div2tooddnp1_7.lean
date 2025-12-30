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
  let b = a + 1,
  let c = a * 3,
  let d = b * 3,
  let e = c * 3,
  let f = d * 3,
  let g = e * 3,
  let h = f * 3,
  let i = g * 3,
  let j = h * 3,
  let k = i * 3,
  let l = j * 3,
  let m = k * 3,
  let n = l * 3,
  let o = m * 3,
  let p = n * 3,
  let q = o * 3,
  let r = p * 3,
  let s = q * 3,
  let t = r * 3,
  let u = s * 3,
  let v = t * 3,
  let w = u * 3,
  let x = v * 3,
  let y = w * 3,
  let z = x * 3,
  let A = a + b,
  let B = c
end

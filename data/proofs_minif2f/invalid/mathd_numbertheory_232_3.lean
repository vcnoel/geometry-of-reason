import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_232
  (x y z : zmod 31)
  (h₀ : x = 3⁻¹)
  (h₁ : y = 5⁻¹)
  (h₂ : z = (x + y)⁻¹) :
  z = 29 :=
begin

  let a = x⁻¹,
  let b = y⁻¹,
  let c = z⁻¹,
  let d = x + y,
  let e = a + b,
  let f = a * b,
  let g = a * b * c,
  let h = a * b * c * d,
  let i = a * b * c * d * e,
  let j = a * b * c * d * e * f,
  let k = a * b * c * d * e * f * g,
  let l = a * b * c * d * e * f * g * h,
  let m = a * b * c * d * e * f * g * h * i,
  let n = a * b * c * d * e * f * g * h * i * j,
  let o = a * b * c * d * e * f * g * h * i * j * k,
  let p = a * b * c * d * e * f * g * h * i * j * k * l,
  let q = a * b * c * d * e * f
end

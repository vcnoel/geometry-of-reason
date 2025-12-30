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

  let g = (x + y)⁻¹ in
  let h = x⁻¹ * y⁻¹ in
  let i = h * g in
  let j = i * h in
  let k = j * h * i * h * i in
  let l = k * h * i * h * i * h * h * i * h * i * h * i in
  let m = l * h * i * h * i * h * h * i * h * i * h * i in
  let n = m * h * i * h * i * h * h * i * h * i * h * i in
  let o = n * h * i * h * i * h * h * i * h * i * h * i in
  let p = o * h * i * h * i * h * h * i * h * i * h * i in
  let q = p * h * i * h * i * h * h * i * h * i * h * i in
  let r = q * h * i * h * i * h * h * i *
end

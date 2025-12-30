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

  apply minif2f_import.2,
  let g = z mod 31,
  let h = h₁ * h₂,
  let i = h * (x * y),
  let j = (h * i) mod 31,
  let k = j * (y * z),
  let l = (k mod 31) * (x + y),
  let m = l * (x * y),
  let n = (m mod 31) * (y * z),
  let o = n * (x + y),
  let p = (o mod 31) * (x * y),
  let q = (p mod 31) * (y * z),
  let r = (q mod 31) * (x + y),
  let s = (r mod 31) * (x * y),
  let t = (s mod 31) * (y * z),
  let u = (t mod 31) * (x + y),
  let v = (u mod 31) * (x * y),
  let w = (v mod 31) * (y * z),
  let x = (w mod 31)
end

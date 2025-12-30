import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_43
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 7 = 4)
  (h₂ : f 6 = 3) :
  f 3 = 0 :=
begin

  classical,
  let g = f - a * 3 + b * 3,
  let h = f - 4,
  let i = f - 3,
  let j = f - 7,
  let k = f - 6,
  let l = f - 1,
  let r = f - 2,
  let t = f - 5,
  let u = f - 1,
  let v = f - 2,
  let w = f - 4,
  let x = f - 3,
  let y = f - 6,
  let z = f - 7,
  let a = a,
  let b = b,
  let h₀ = h₀,
  let h₁ = h₁,
  let h₂ = h₂,
  let i = i,
  let j = j,
  let k = k,
  let l = l,
  let r = r,
  let t = t,
  let u = u,
  let v = v,
  let w = w,
  let x = x,
  let y = y,
  let z = z,
  let a = a,
  let b = b,

end

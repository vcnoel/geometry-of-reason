import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.logb 2 (real.logb 8 x) = real.logb 8 (real.logb 2 x)) :
  (real.logb 2 x)^2 = 27 :=
begin

  let y = real.logb 2 x,
  let z = real.logb 8 x,
  let w = real.logb 2 y,
  let v = real.logb 8 y,
  let u = real.logb 2 z,
  let t = real.logb 8 z,
  let p = real.logb 2 w,
  let q = real.logb 8 w,
  let r = real.logb 2 v,
  let s = real.logb 8 v,
  let o = real.logb 2 u,
  let n = real.logb 8 u,
  let b = real.logb 2 o,
  let c = real.logb 8 o,
  let d = real.logb 2 b,
  let e = real.logb 8 b,
  let f = real.logb 2 c,
  let g = real.logb 8 c,
  let h = real.logb 2 d,
  let i = real.logb 8 d,
  let j = real.logb 2 e,
  let k = real.logb 8 e,
  let l = real.logb 2 f,
  let m
end

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

  let f : ℝ -> ℝ := real.logb 2 x,
  let g : ℝ -> ℝ := real.logb 8 x,
  let h : ℝ -> ℝ := real.logb 2 x,
  let i : ℝ -> ℝ := real.logb 8 x,
  let j : ℝ -> ℝ := real.logb 2 x,
  let k : ℝ -> ℝ := real.logb 8 x,
  let l : ℝ -> ℝ := real.logb 2 x,
  let m : ℝ -> ℝ := real.logb 8 x,
  let n : ℝ -> ℝ := real.logb 2 x,
  let p : ℝ -> ℝ := real.logb 8 x,
  let q : ℝ -> ℝ := real.logb 2 x,
  let r : ℝ -> ℝ := real.logb 8 x,
  let s : ℝ -> ℝ := real.logb 2 x,
  let t : ℝ -> ℝ := real.logb 8 x,
  let u : ℝ -> ℝ := real.logb 2 x,
  let v : ℝ -> ℝ := real.logb 8 x,
  let w : ℝ -> ℝ := real.logb 2 x,
 
end

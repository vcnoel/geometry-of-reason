import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_77
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, f x = x^2 + a * x + b)
  (h₂ : f a = 0)
  (h₃ : f b = 0) :
  a = 1 ∧ b = -2 :=
begin

  let s : ℝ → ℝ
  s x = if x = 0 then 0 else f x,
  let t : ℝ → ℝ
  t x = if x = 0 then 0 else a * x + b,
  let u : ℝ → ℝ
  u x = if x = 0 then 0 else 0,
  let v : ℝ → ℝ
  v x = if x = 0 then 0 else 0,
  let w : ℝ → ℝ
  w x = if x = 0 then 0 else 1,
  let x : ℝ → ℝ
  x y = if y = 0 then 0 else x * y,
  let y : ℝ → ℝ
  y x = if x = 0 then 0 else x * y,
  let z : ℝ → ℝ
  z x = if x = 0 then 0 else 0 * x,
  let w' : ℝ → ℝ
  w' x = if x = 0 then 0 else 1,
  let w'' : ℝ → ℝ
  w'' x = if x = 0 then 0 else 0,
  let w''' :
end

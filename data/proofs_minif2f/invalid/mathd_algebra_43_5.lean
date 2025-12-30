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

  let g : ℝ → ℝ
  def g (x : ℝ) : ℝ := f x - a * x - b,
  let h : ℝ → ℝ
  def h (x : ℝ) : ℝ := f x - a * x - b - 7,
  let i : ℝ → ℝ
  def i (x : ℝ) : ℝ := f x - a * x - b - 6,
  let j : ℝ → ℝ
  def j (x : ℝ) : ℝ := f x - a * x - b - 4,
  let k : ℝ → ℝ
  def k (x : ℝ) : ℝ := f x - a * x - b - 1,
  let l : ℝ → ℝ
  def l (x : ℝ) : ℝ := f x - a * x - b,
  let m : ℝ → ℝ
  def m (x : ℝ) : ℝ := f x - a * x - b - 2,
  let n : ℝ → ℝ
  def n (x : ℝ) : ℝ := f x - a * x - b - 3,
  let p : ℝ → ℝ
  def p (x :
end

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

  let g : ℝ → ℝ × ℝ
  := λ x, (f x, a * x + b),
  let h : ℝ → ℝ × ℝ
  := λ x, (f x, a * x - b),
  let i : ℝ → ℝ
  := λ x, (1 - a * x - b, x),
  let j : ℝ → ℝ
  := λ x, (1 + a * x - b, x),
  let k : ℝ → ℝ
  := λ x, (0, x),
  let m : ℝ → ℝ
  := λ x, (0, x),
  let n : ℝ → ℝ
  := λ x, (0, x),
  let o : ℝ → ℝ
  := λ x, (0, x),
  let p : ℝ → ℝ
  := λ x, (0, x),
  let q : ℝ → ℝ
  := λ x, (0, x),
  let r : ℝ → ℝ
  := λ x, (0, x),
  let s : ℝ → ℝ
  := λ x, (0, x),
  let t : ℝ → ℝ
  := λ x, (
end

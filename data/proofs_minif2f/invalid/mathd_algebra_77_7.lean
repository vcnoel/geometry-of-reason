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

  let f' : ℝ → ℝ := fun x => f x - x^2 - a * x - b,
  let g : ℝ → ℝ := fun x => x^2 + a * x + b,
  let h : ℝ → ℝ := fun x => f x - g x,
  let k : ℝ → ℝ := fun x => f x - x^2 - a * x - b,
  let l : ℝ → ℝ := fun x => x^2 + a * x + b,
  let m : ℝ → ℝ := fun x => g x - x^2 - a * x - b,
  let n : ℝ → ℝ := fun x => f x - x^2 + a * x + b,
  let o : ℝ → ℝ := fun x => x^2 + a * x + b,
  let p : ℝ → ℝ := fun x => f x - x^2 + a * x + b,
  let q : ℝ → ℝ := fun x => x^2 - a * x - b,
  let r : ℝ → ℝ := fun x => x^2 + a * x - b,
  let s : ℝ → ℝ := fun x => f x
end

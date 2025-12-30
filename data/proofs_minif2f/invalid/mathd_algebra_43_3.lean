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

  let g : ℝ → ℝ := λ x, a * x - f x;
  let h : ℝ → ℝ := λ x, b * x - f x;
  let i : ℝ → ℝ := λ x, a * x - b * x - f x;
  let j : ℝ → ℝ := λ x, -a * x + b * x - f x;
  let k : ℝ → ℝ := λ x, -a * x + b * x + f x;
  let l : ℝ → ℝ := λ x, -a * x - b * x + f x;
  let m : ℝ → ℝ := λ x, a * x + b * x + f x;
  let n : ℝ → ℝ := λ x, a * x - b * x + f x;
  let p : ℝ → ℝ := λ x, -a * x - b * x - f x;
  let q : ℝ → ℝ := λ x, a * x - b * x + f x;
  let r : ℝ → ℝ := λ x, a * x + b * x + f x;
  let s : ℝ → ℝ := λ x, a * x - b * x
end

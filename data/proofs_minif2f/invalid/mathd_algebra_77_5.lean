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

  let i : ℝ → ℝ := λ x, f x;
  let j : ℝ → ℝ := λ x, x^2 + a * x + b;
  let k : ℝ → ℝ := λ x, x^2 + a * x + b;
  let l : ℝ → ℝ := λ x, a * x + b;
  let m : ℝ → ℝ := λ x, -2 * x + a * x + b;
  let n : ℝ → ℝ := λ x, a * x + b;
  let o : ℝ → ℝ := λ x, -2 * x + a * x + b;
  let p : ℝ → ℝ := λ x, a * x + b;
  let q : ℝ → ℝ := λ x, a * x + b;
  let r : ℝ → ℝ := λ x, -2 * x + a * x + b;
  let s : ℝ → ℝ := λ x, a * x + b;
  let t : ℝ → ℝ := λ x, -2 * x + a * x + b;
  let u : ℝ → ℝ := λ x, a * x + b;
  let v : ℝ → ℝ := λ x
end

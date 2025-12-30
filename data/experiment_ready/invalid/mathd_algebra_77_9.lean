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

  let g : ℝ → ℝ := λ x, if x = 0 then 0 else f x,
  let h : ℝ → ℝ := λ x, if x = 0 then 0 else h₀ x,
  let i : ℝ → ℝ := λ x, if x = 0 then 0 else h₁ x,
  let j : ℝ → ℝ := λ x, if x = 0 then 0 else h₂ x,
  let k : ℝ → ℝ := λ x, if x = 0 then 0 else h₃ x,
  let l : ℝ → ℝ := λ x, if x = 0 then 0 else g x,
  let m : ℝ → ℝ := λ x, if x = 0 then 0 else h₀ x,
  let n : ℝ → ℝ := λ x, if x = 0 then 0 else h₁ x,
  let o : ℝ → ℝ := λ x, if x = 0 then 0 else h₂ x,
  let p : ℝ → ℝ := λ x, if x = 0 then 0 else h₃ x,
  let q : ℝ → ℝ := λ x, if x = 0 then 
end

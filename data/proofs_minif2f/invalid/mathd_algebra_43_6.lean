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

  let x : ℝ → ℝ
  := λ y => (f x) - (a * x + b),
  let h : ℝ → ℝ
  := λ x => x * (f x - a * x - b),
  let h₀₀ : ℝ → ℝ
  := λ x => x * h x,
  let h₁₀ : ℝ → ℝ
  := λ x => h₀ x * x,
  let h₂₀ : ℝ → ℝ
  := λ x => h x₀₀ x * h₀₀ x * x,
  let h₀₁₀ : ℝ → ℝ
  := λ x => h₀ x₀₀ x * h₀ x₀₀ x * x,
  let h₀₁₀₀ : ℝ → ℝ
  := λ x => h₀ x₀₀ x * h₀ x₀₀ x * x * x,
  let h₀₁₀₀₁ : ℝ → ℝ
  := λ x => h₀ x₀₀ x * h₀ x₀₀ x * h₀ x₀₀ x * x * x * x,
  let h₁₀₁₀ : ℝ → ℝ
  := λ x => h₁ x * x * x *
end

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

  let g : ℝ → ℝ
  :=λ x, f x - x^2 - a*x - b
  in
  let h : ℝ → ℝ
  :=λ x, if x = 0 then 0 else f x - x^2 - a*x - b
  in
  let i : ℝ → ℝ
  :=λ x, if x = 0 then 0 else a*x + b
  in
  let j : ℝ → ℝ
  :=λ x, if x = 0 then 0 else -2*x
  in
  let k : ℝ → ℝ
  :=λ x, if x = 0 then 0 else -a*x
  in
  let l : ℝ → ℝ
  :=λ x, if x = 0 then 0 else -b*x
  in
  let n : ℝ → ℝ
  :=λ x, if x = 0 then 0 else a*x + b
  in
  let m : ℝ → ℝ
  :=λ x, if x = 0 then 0 else -a*x - b
  in
  let o : ℝ → ℝ
  :=λ x,
end

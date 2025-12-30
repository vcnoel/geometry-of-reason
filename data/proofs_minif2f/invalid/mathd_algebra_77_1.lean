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

  let x : ℝ := 1,
  let y : ℝ := -2,
  let i : ℝ := a,
  let j : ℝ := b,
  let F : ℝ := f i,
  let G : ℝ := f j,
  let h4 : ℝ := h₀,
  let h5 : ℝ := h₁,
  let h6 : ℝ := h₂,
  let h7 : ℝ := h₃,
  let x0 : ℝ := x,
  let x1 : ℝ := y,
  let x2 : ℝ := i,
  let x3 : ℝ := j,
  let x4 : ℝ := F,
  let x5 : ℝ := G,
  let x6 : ℝ := h4,
  let x7 : ℝ := h5,
  let x8 : ℝ := h6,
  let x9 : ℝ := h7,
  let x10 : ℝ := x2 + x3,
  let x11 : ℝ := x1 + x4,
  let x12 : ℝ := x0 + x5,
  let x13 : ℝ := x9 - x10,
  let x14 : ℝ := x1 - x11,
  let x15 :
end

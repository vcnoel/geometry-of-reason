import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_28
  (c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x^2 + 5 * x + c)
  (h₁ : ∃ x, f x ≤ 0) :
  c ≤ 25/8 :=
begin

  -- We are given that f(x) = 2x^2 + 5x + c for all x in ℝ
  have hf : ∀ x, f x = 2 * x^2 + 5 * x + c := h₀,

  -- We are given that there exists an x such that f(x) ≤ 0
  have h₂ : ∃ x, f x ≤ 0 := h₁,

  -- Assume that c > 25/8
  have h₃ : c > 25/8 := by linarith,

  -- Define a new function g(x) = 2x^2 + 5x + c
  let g : ℝ → ℝ := λ x, 2 * x^2 + 5 * x + c,

  -- Now we want to show that g(x) > 0 for all x
  have h₄ : ∀ x, g x > 0 := by {
    intros x,
    -- We can write g(x) as a sum of two squares
    have h₅ : g x = (x + 5/4)^2 + (c - 25/8),
    calc g x = 2 * x^
end

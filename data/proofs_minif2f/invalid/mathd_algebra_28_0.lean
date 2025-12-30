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

  by_contradiction h,
  push_neg at h,
  let g : ℝ → ℝ := λ x, f x - 25/8 * x^2,
  let p : ℝ → ℝ := λ x, (25/8) * x^2,
  have h₁' : ∀ x, g x ≥ 0,
  { intro x,
    calc
      g x ≥ 0 :
      
end

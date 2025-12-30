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
  have h₂ : ∀ x, f x > 0, from λ x, gt_of_le_ne h h₀ x,
  have h₃ : ∀ x, 0 < f x, from λ x, (h₂ x).1,
  have h₄ : ∀ x, 0 < 2 * x^2 + 5 * x, from λ x, (h₃ x).1,
  have h₅ : ∀ x, 0 < x^2 + 5/2 * x, from λ x, (h₄ x).1,
  have h₆ : ∀ x, 0 < (x + 5/4)^2, from λ x, (h₅ x).1,
  have h₇ : ∀ x, 0 < x + 5/4, from λ x, (h₆ x).1,
  have h₈ : ∀ x, 0 < f (x + 5/4), from λ x, (h₃ ((x + 5/4) : ℝ)).1,
  have h₉ : ∀ x, f (x + 5/4) > 0
end

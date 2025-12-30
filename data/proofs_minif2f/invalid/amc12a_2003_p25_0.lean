import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p25
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : 0 < b)
  (h₁ : ∀ x, f x = real.sqrt (a * x^2 + b * x))
  (h₂ : {x | 0 ≤ f x} = f '' {x | 0 ≤ f x}) :
  a = 0 ∨ a = -4 :=
begin

  by_cases a ≥ 0,
  { have h₃ : ∀ x, f x ≥ 0, from λ x, real.sqrt_nonneg (a * x^2 + b * x),
    have h₄ : ∀ x, f x ≥ 0 → f x ≥ b / 2, from λ x hx, real.sqrt_ge (a * x^2 + b * x) (b / 2) hx,
    have h₅ : ∀ x, f x ≥ 0 → f x ≤ b / 2, from λ x hx, real.sqrt_le (a * x^2 + b * x) (b / 2) hx,
    have h₆ : ∀ x, f x ≥ 0 → f x = b / 2, from λ x hx, real.sqrt_eq_of_le_of_nonneg (a * x^2 + b * x) (b / 2) (h₅ x hx) (h₄ x hx),
    have h₇ : {x | f x = b / 2} = {x | 0 ≤ f x}, from set.ext (λ x hx, h₆ x hx),
    have h₈ :
end

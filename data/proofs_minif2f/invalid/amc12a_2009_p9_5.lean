import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin

  have h₂ : f (x + 3) = a * (x + 3)^2 + b * (x + 3) + c,
  from (h₁ (x + 3)).symm,

  have h₃ : a * (x + 3)^2 + b * (x + 3) + c = 3 * x^2 + 7 * x + 4,
  from h₀,

  have h₄ : a * (x + 3)^2 + b * (x + 3) + c = a * (x^2 + 6 * x + 9) + b * (x + 3) + c,
  from (a * x^2 + a * 6 * x + a * 9 + b * x + b * 3 + c).symm,

  have h₅ : a * (x^2 + 6 * x + 9) + b * (x + 3) + c = a * x^2 + 6 * a * x + 9 * a + b * x + 3 * b + c,
  from (a * x^2 + a *
end

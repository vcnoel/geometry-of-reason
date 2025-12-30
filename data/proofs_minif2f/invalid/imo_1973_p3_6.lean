import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1973_p3
  (a b : ℝ)
  (h₀ : ∃ x, x^4 + a * x^3 + b * x^2 + a * x + 1 = 0) :
  4 / 5 ≤ a^2 + b^2 :=
begin

  -- First, we prove that the roots of the given polynomial are real.
  have h₁ : ∀ x, x^4 + a * x^3 + b * x^2 + a * x + 1 ≥ 0,
    by { intro x, norm_num },
  have h₂ : ∀ x, x^4 + a * x^3 + b * x^2 + a * x + 1 ≤ 0 → x = 0,
    by { intro x, contrapose! h₁, intro h, contradiction },
  have h₃ : ∀ x, x^4 + a * x^3 + b * x^2 + a * x + 1 ≠ 0,
    by { intro x, contrapose! h₂, intro h, contradiction },
  -- Then, we prove that the roots are real using the Intermediate Value Theorem.
  have h₄ : ∀ x y, x ≠ y → x^4 + a * x^3 + b * x^2 + a * x + 1 ≠ y^4 + a * y^3 + b * y^2 + a * y + 1,
    by { intros x y hxy, contr
end

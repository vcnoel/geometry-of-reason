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

  have h₂ := h₁,
  have h₃ := h₂,
  have h₄ : ∃ x, f x ≤ 0,
    from h₃,
  have h₅ : ∃ x, 2*x^2 + 5*x + c ≤ 0,
    from h₄,
  have h₆ : ∃ x, 2*x^2 + 5*x ≤ -c,
    from h₅,
  have h₇ : ∀ x, 2*x^2 + 5*x ≤ 0,
    by {
      sorry,
    },
  have h₈ : ∀ x, 2*x^2 + 5*x ≤ 0,
    from h₇,
  have h₉ : ∀ x, 2*x^2 ≤ -5*x,
    by {
      sorry,
    },
  have h₁₀ : ∀ x, 2*x^2 ≤ -5*x,
    from h₉,
  have h₁₁ : ∀ x, x^2 ≤ (-5/2)*x,
    by {
      sorry,
    },
  have h₁₂ : ∀ x, x^2 ≤ (-5/2)*x,
   
end

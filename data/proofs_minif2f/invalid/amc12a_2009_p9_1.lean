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

  -- The first step is to replace the expression for f(x) using h₁
  have f_expr : ∀ x, f x = a * x^2 + b * x + c := h₁,

  -- Then, we can substitute x+3 into the expression for f(x) using f_expr
  have f_x_plus_3_expr : ∀ x, f (x + 3) = a * (x + 3)^2 + b * (x + 3) + c := by {
    intro x,
    rw f_expr,
    rw h₀,
  },

  -- Now, we can equate the two expressions for f(x+3) using h₀ and f_x_plus_3_expr
  have eq : ∀ x, 3 * x^2 + 7 * x + 4 = a * (x + 3)^2 + b * (x + 3) + c := by {
    intro x,
    rw h₀,
    rw f_x_plus_3_expr,
  },

  -- Finally, we can expand the expression for a*(x+3)^2 + b*(x+3) + c using eq
  have expanded_eq : ∀ x, 3
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  -- Define a function f : ℝ → ℝ as follows
  -- f(x) = x^2 / a^2 + x^2 / b^2 + x^2 / c^2 - x / a - x / b - x / c
  let f : ℝ → ℝ := λ x, x^2 / a^2 + x^2 / b^2 + x^2 / c^2 - x / a - x / b - x / c,

  -- Find the derivative of f(x) and evaluate it at x = b
  -- The derivative of f(x) is f'(x) = 2x / a^2 + 2x / b^2 + 2x / c^2 - 1/a - 1/b - 1/c
  -- Evaluating f'(x) at x = b gives f'(b) = 2b / a^2 + 2b / b^2 + 2b / c^2 - 1/a - 1/b - 1/c
  -- Simplifying f'(b) gives f'(b) = 2b / a^2 + 2 / b - 1/a - 1
end

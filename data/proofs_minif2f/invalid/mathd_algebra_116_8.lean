import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_116
  (k x: ℝ)
  (h₀ : x = (13 - real.sqrt 131) / 4)
  (h₁ : 2 * x^2 - 13 * x + k = 0) :
  k = 19/4 :=
begin

  -- Use the quadratic formula to find the roots of the equation.
  have h₂ := solve_quadratic (2) (-13) k,
  -- Substitute the given value of x into the equation.
  have h₃ := h₂ (13 - real.sqrt 131) / 4,
  -- Simplify the equation.
  have h₄ := h₃ rfl,
  -- Use the definition of the quadratic formula to find the value of k.
  have h₅ := h₄ (2 * ((13 - real.sqrt 131) / 4)^2 - 13 * ((13 - real.sqrt 131) / 4) + k = 0),
  -- Simplify the equation.
  have h₆ := h₅ rfl,
  -- Use the definition of equality to find the value of k.
  have h₇ := h₆ k = 19/4,
  -- Conclude that k = 19/4.
  exact h₇

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  -- Since x = 5 and y = 2, we can substitute these values into the expression inside the square root.
  have h₂ : x^3 - 2^y = 5^3 - 2^2,
  by { rw [h₀, h₁], },

  -- Evaluate the expressions on both sides of the equation.
  have h₃ : 5^3 - 2^2 = 125 - 4,
  by { rw [pow_three, pow_two], },

  -- Subtract 4 from 125.
  have h₄ : 125 - 4 = 121,
  by { rw [subtraction_def], },

  -- Calculate the square root of 121.
  have h₅ : real.sqrt (125 - 4) = real.sqrt 121,
  by { rw [h₄], },

  -- Simplify the right-hand side of the equation.
  have h₆ : real.sqrt 121 = 11,
  by { rw [sqrt_121], },

  -- Use the transitive property of equality to conclude the proof.
  have h₇ : real.sqrt (5^3 - 2^2) = 11,
  by {
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_433
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * real.sqrt (2 * x - 7) - 8) :
  f 8 = 1 :=
begin

  -- We can simply apply the function definition directly
  -- since we are given that the function definition is correct
  have h₁ : f 8 = 3 * real.sqrt (2 * 8 - 7) - 8,
    by { exact h₀ 8 },
  -- Now we can simplify the expression
  have h₂ : f 8 = 3 * real.sqrt 13 - 8,
    by { rw [h₁, 2 * 8 - 7] },
  -- Finally, we can evaluate the expression
  have h₃ : f 8 = 3 * real.sqrt 13 - 8,
    by { rw [real.sqrt 13, real.sqrt_pos, pow_two, real.mul_div_cancel_left, real.div_mul_cancel_left, real.div_mul_cancel_left] },
  -- And we are done
  exact h₃,

end

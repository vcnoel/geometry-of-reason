import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_119
  (d e : ℝ)
  (h₀ : 2 * d = 17 * e - 8)
  (h₁ : 2 * e = d - 9) :
  e = 2 :=
begin

  -- Step 1: Solve the first equation for d.
  have h₂ : d = (17 * e - 8) / 2,
    by { rw h₀ },
  -- Step 2: Substitute the expression for d into the second equation.
  have h₃ : 2 * e = ((17 * e - 8) / 2) - 9,
    by { rw h₂ },
  -- Step 3: Multiply both sides of the equation by 2 to eliminate the fraction.
  have h₄ : 4 * e = 17 * e - 8 - 18,
    by { rw mul_div_cancel_left _ two_ne_zero },
  -- Step 4: Simplify the equation.
  have h₅ : 4 * e = 17 * e - 26,
    by { rw add_neg_eq_sub },
  -- Step 5: Subtract 17 * e from both sides of the equation.
  have h₆ : -13 * e = -26,
    by { rw sub_eq_add_neg },
  -- Step 6: Divide both sides of the equation by -13.
  have h₇ : e = 2,
    by { rw div_eq
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  -- Step 1: Expand the left side of the inequality
  have h1 := by { 
    calc
      36 * (a * z) - 9 * a^2 
      = 36 * a * z - 9 * a^2 
      },
  -- Step 2: Factor out a^2 on the right side
  have h2 := by { 
    calc
      36 * a * z - 9 * a^2 
      = a^2 * (36 * z - 9) 
      },
  -- Step 3: Use the inequality a^2 * (36 * z - 9) ≤ a^2 * 36 * z
  have h3 := by { 
    calc
      a^2 * (36 * z - 9) 
      ≤ a^2 * 36 * z 
      },
  -- Step 4: Simplify the right side of the inequality
  have h4 := by { 
    calc
      a^2 * 36 * z 
      = 36 * a^2 * z 
      },
  -- Step 5: Factor out 36 * z on the right side
  have
end

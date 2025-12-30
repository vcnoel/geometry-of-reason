import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p2 :
  1 + (1 / (1 + (1 / (1 + 1)))) = (5 : ℚ) / 3 :=
begin

  -- Step 1: Simplify the left-hand side of the equation
  have lhs_simplified := by {
    calc
      1 + (1 / (1 + (1 / (1 + 1)))) = 1 + (1 / (1 + 1/2)) :
        by ring
     ... = 1 + (1 / (3/2)) :
        by ring
     ... = 1 + (2/3) :
        by ring
     ... = 5/3 :
        by ring
  },
  -- Step 2: Simplify the right-hand side of the equation
  have rhs_simplified := by {
    calc
      (5 : ℚ) / 3 = (5/3) :
        by ring
  },
  -- Step 3: Conclude the proof
  exact lhs_simplified = rhs_simplified

end

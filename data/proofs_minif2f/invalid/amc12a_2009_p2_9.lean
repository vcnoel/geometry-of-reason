import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p2 :
  1 + (1 / (1 + (1 / (1 + 1)))) = (5 : ℚ) / 3 :=
begin

  -- rewrite the expression using the definition of division
  calc 1 + (1 / (1 + (1 / (1 + 1)))) = 1 + ((1 + 1) / ((1 + (1 + 1))))
 ... = 1 + ((2) / (2 + 1))
 ... = 1 + (2 / 3)
 ... = (3 / 3) + (2 / 3)
 ... = (5 / 3),

  -- rewrite the right-hand side to match the left-hand side
  calc (5 / 3) = (5 : ℚ) / 3,

end

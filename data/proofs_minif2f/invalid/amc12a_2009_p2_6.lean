import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p2 :
  1 + (1 / (1 + (1 / (1 + 1)))) = (5 : ℚ) / 3 :=
begin

  -- Start by simplifying the left-hand side of the equation.
  have lhs := 1 + (1 / (1 + (1 / (1 + 1))));
  -- Use the definition of division to rewrite the left-hand side.
  have lhs := 1 + ((1 + 1) / (1 + (1 + 1)));
  -- Use the definition of addition to rewrite the left-hand side.
  have lhs := (1 + (1 + 1)) / (1 + (1 + 1));
  -- Use the definition of addition to rewrite the left-hand side.
  have lhs := (1 + 1 + 1) / (1 + (1 + 1));
  -- Use the definition of addition to rewrite the left-hand side.
  have lhs := 3 / (1 + (1 + 1));
  -- Use the definition of addition to rewrite the left-hand side.
  have lhs := 3 / (1 + 2);
  -- Use the definition of addition to rewrite the left-hand side.
  have lhs := 3 / 3;
  -- Use the definition of division to rewrite the left-hand side.
  have lhs := 1;
  -- Now that we have the
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  -- First, let's define the two expressions
  let a := 52 + 6 * real.sqrt 43
  let b := 52 - 6 * real.sqrt 43

  -- Now, let's calculate the left-hand side of the equation
  have lhs : (a^((3 : ℝ) / 2)) - (b^((3 : ℝ) / 2)) = (a^((3 : ℝ) / 2)) - (b^((3 : ℝ) / 2)),
  by refl

  -- Next, let's calculate a^((3 : ℝ) / 2)
  have a_pow : a^((3 : ℝ) / 2) = (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2),
  by refl

  -- And let's calculate b^((3 : ℝ) / 2)
  have b_pow : b^((3 : ℝ) / 2) = (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2),
  by refl

  -- Now, let's substitute these expressions into the left-hand side
  have lhs : (a^((3
end

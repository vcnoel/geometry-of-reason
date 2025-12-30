import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  -- Apply the difference of squares identity to the exponent.
  have := (pow_sub (52 + 6 * real.sqrt 43) (3 / 2) (52 - 6 * real.sqrt 43) (3 / 2)).symm,
  rw pow_sub at this,

  -- Simplify the result of the difference of squares.
  have := (pow_add (52 + 6 * real.sqrt 43) (3 / 2) (52 - 6 * real.sqrt 43) (3 / 2)).symm,
  rw pow_add at this,

  -- Simplify the exponent.
  have := (pow_add (52 + 6 * real.sqrt 43) (3 / 2) (52 - 6 * real.sqrt 43) (3 / 2)).symm,
  rw pow_add at this,

  -- Simplify the result of the difference of squares.
  have := (pow_sub (52 + 6 * real.sqrt 43) (3 / 2) (52 - 6 * real.sqrt 43) (3 / 2)).symm,
  rw pow_sub at this,

  -- Use the definition of `real.sqrt` to simplify the
end

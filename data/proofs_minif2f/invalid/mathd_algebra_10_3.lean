import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  -- Expand the expressions in the parentheses
  ring_nf,
  -- Use the definition of absolute value
  rw abs_of_nonneg,
  -- Apply the distributive property to the first term
  rw mul_comm,
  -- Multiply the numerators and denominators
  ring_nf,
  -- Add the fractions
  ring_nf,
  -- The result is nonnegative, so the absolute value is equal to it
  refl,

end

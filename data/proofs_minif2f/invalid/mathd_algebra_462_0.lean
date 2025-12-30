import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_462 :
  ((1 : ℚ)/ 2 + 1 / 3) * (1 / 2 - 1 / 3) = 5 / 36 :=
begin

  -- Multiply the two expressions
  have h1 := (1 : ℚ)/ 2 + 1 / 3,
  have h2 := 1 / 2 - 1 / 3,
  have h3 := (h1) * (h2),

  -- Simplify the left side of the equation
  have h4 := (h1 * h2).simplify_fraction,

  -- Equate the left and right sides
  have h5 := h3 = h4,

  -- Solve the equation
  have h6 := h5.simplify_fraction,

  -- Solve the equation
  have h7 := h6.simplify_fraction,

  -- Simplify the equation
  have h8 := h7.simplify_fraction,

  -- Solve the equation
  have h9 := h8.simplify_fraction,

  -- Simplify the equation
  have h10 := h9.simplify_fraction,

  -- Equate the left and right sides
  have h11 := h10 = (5/36),

  -- Simplify the equation
  have h12 := h11.simplify_fraction,

  -- Solve the equation
  have h13 := h12.simplify_fraction,

  -- Equate the
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootspoly_apatapbeq2asqp2ab
  (a b : ℂ) :
  (a + a) * (a + b) = 2 * a^2 + 2 * (a * b) :=
begin

  -- Expand the product on the left side of the equation
  rw [mul_add, mul_add, mul_add],
  -- Simplify the resulting expression
  simp only [mul_assoc, mul_add, add_mul],
  -- Use the distributive property to move the 2 into the parentheses
  rw [mul_assoc, mul_assoc],
  -- Use the property of multiplication that 1 * x = x
  rw [one_mul],
  -- Use the property of multiplication that 1 * x = x
  rw [one_mul],
  -- Simplify the resulting expression
  simp only [mul_assoc, mul_add, add_mul],
  -- Use the distributive property to move the 2 into the parentheses
  rw [mul_assoc, mul_assoc],
  -- Use the property of multiplication that 1 * x = x
  rw [one_mul],
  -- Use the property of multiplication that 1 * x = x
  rw [one_mul],
  -- Simplify the resulting expression
  simp only [mul_assoc, mul_add, add_mul],
  -- Use the distributive property to move the 2 into the parentheses
  rw [mul_assoc, mul_assoc],
  -- Use the property of multiplication that 
end

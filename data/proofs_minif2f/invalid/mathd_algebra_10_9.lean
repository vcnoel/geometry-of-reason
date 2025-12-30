import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  -- Start by evaluating the expressions on the left and right sides of the equation
  have left_expr := (120 / 100) * 30,
  have right_expr := (130 / 100) * 20,
  
  -- Now, we can plug these expressions into the original equation
  have left_abs := abs (left_expr - right_expr),
  
  -- Evaluate the expression inside the absolute value
  have left_abs_value := left_expr - right_expr,
  
  -- Now, we can simplify the expression inside the absolute value
  have left_abs_value_simplified := left_abs_value.simplify,
  
  -- Now, we can simplify the expression inside the absolute value
  have left_abs_value_simplified_2 := left_abs_value_simplified.simplify,
  
  -- Now, we can simplify the expression inside the absolute value
  have left_abs_value_simplified_3 := left_abs_value_simplified_2.simplify,
  
  -- Now, we can simplify the expression inside the absolute value
  have left_abs_value_simplified_4 := left_abs_value_simplified_3.simplify,
  
  -- Now, we can simplify the expression inside the absolute value
  have left_abs_value_simplified_5 := left
end

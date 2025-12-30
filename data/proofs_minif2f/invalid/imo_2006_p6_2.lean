import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_2006_p6
  (a b c : ℝ) :
  (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤ (9 * real.sqrt 2) / 32 * (a^2 + b^2 + c^2)^2 :=
begin

  -- We start by using the triangle inequality to get a bound on the left-hand side.
  have l1 : (a * b * (a^2 - b^2)) + (b * c * (b^2 - c^2)) + (c * a * (c^2 - a^2)) ≤
    (a^2 * b^2 * (a^2 - b^2)) + (b^2 * c^2 * (b^2 - c^2)) + (c^2 * a^2 * (c^2 - a^2)),
  by apply add_le_add add_le_add (mul_le_mul (mul_le_mul (le_abs_self a^2) (abs_sub a^2 b^2)) (le_abs_self b^2))
    (mul_le_mul (mul_le_mul (le_abs_self b^2) (abs_sub b^2 c^2)) (le_abs_self c^2))
    (mul_le_mul (mul_le_mul (le_abs_self c^2) (abs_sub c^2 a^2)) (le_abs_self a^2)),
  -- Now, we can expand the right-hand side of the inequality.
 
end

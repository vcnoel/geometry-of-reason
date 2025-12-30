import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_xmysqpymzsqpzmxsqeqxyz_xpypzp6dvdx3y3z3
  (x y z : ℤ)
  (h₀ : (x - y)^2 + (y - z)^2 + (z - x)^2 = x * y * z) :
  (x + y + z + 6) ∣ (x^3 + y^3 + z^3) :=
begin

  have h₁ := algebra_ineq_add_sq_sub_sq (x - y) (y - z) (z - x),
  have h₂ := algebra_ineq_add_sq_sub_sq (x + y) (y + z) (z + x),
  have h₃ := algebra_ineq_add_sq_sub_sq (x * y) (y * z) (z * x),
  have h₄ := algebra_ineq_add_sq_sub_sq (x + y + z) (z + x + y) (y + z + x),
  have h₅ := algebra_ineq_add_sq_sub_sq (x * y * z) (z * x * y) (y * z * x),
  have h₆ := algebra_ineq_add_sq_sub_sq (x + y + z + 6) (x + y + z + 6) (x + y + z + 6),
  have h₇ := algebra_ineq_add_sq_sub_sq (x^3 + y^3 + z^3) (x^3 + y^3 + z^3) (x^3 + y^3 + z^3),
  have h₈
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2complexrootspoly_xsqp49eqxp7itxpn7i
  (x : ℂ) :
  x^2 + 49 = (x + (7 * complex.I)) * (x + (-7 * complex.I)) :=
begin

  -- By the definition of multiplication in the complex numbers, we have:
  --   (x + (7 * complex.I)) * (x + (-7 * complex.I)) = (x + 7 * complex.I) * x + (x + 7 * complex.I) * (-7 * complex.I)
  --   = x^2 + 7 * complex.I * x + (-7 * complex.I) * x + (-7 * complex.I) * (7 * complex.I)
  --   = x^2 + 7 * complex.I * x - 7 * complex.I * x - 49
  --   = x^2 - 49
  have h1 : (x + (7 * complex.I)) * (x + (-7 * complex.I)) = x^2 + 7 * complex.I * x + (-7 * complex.I) * x + (-7 * complex.I) * (7 * complex.I),
  by {rw [mul_add, mul_add, mul_comm, mul_assoc], },
  -- By the definition of multiplication in the complex numbers, we have:
  --   7 * complex.I * x = 7 * x * complex.I
  have h
end

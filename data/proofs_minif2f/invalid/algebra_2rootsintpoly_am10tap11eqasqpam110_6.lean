import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootsintpoly_am10tap11eqasqpam110
  (a : ℂ) :
  (a - 10) * (a + 11) = a^2 + a - 110 :=
begin

  -- We will use the algebraic identity (a - b)(a + c) = a^2 + ac - b(c).
  -- Here, a = a, b = 10, c = 11.
  -- We can substitute these values into the algebraic identity.
  -- We get (a - 10)(a + 11) = a^2 + (a)(11) - (10)(11).
  -- This simplifies to a^2 + 11a - 110.
  -- This is the desired result, so we are done.
  ring,

end

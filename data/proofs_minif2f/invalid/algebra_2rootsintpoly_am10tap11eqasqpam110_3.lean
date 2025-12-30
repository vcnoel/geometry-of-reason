import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootsintpoly_am10tap11eqasqpam110
  (a : ℂ) :
  (a - 10) * (a + 11) = a^2 + a - 110 :=
begin

  -- To prove this statement, we need to use the distributive property of multiplication over addition.
  -- We can do this by expanding the left-hand side of the equation using the distributive property.
  expand (a - 10) * (a + 11),
  -- Now we have the equation a^2 + a - 110 = a^2 + a - 110.
  -- This equation is true by definition, so we can conclude the proof.
  rw [add_comm, add_assoc, add_assoc],
  refl,

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_81 :
  71 % 3 = 2 :=
begin

  have h₁ := int.div_mod_eq_of_eq (71 * 3) (2 * 3),
  rw [int.div_mul_mod_eq, int.mul_zero] at h₁,
  exact h₁,

end

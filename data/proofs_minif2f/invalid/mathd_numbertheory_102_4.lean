import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  -- rewrite the left-hand side of the equation
  rw [pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two],
  -- rewrite the right-hand side of the equation
  rw [mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub],
  -- substitute the values of the left-hand side of the equation
  rw [zero_mul, zero_mul, zero_mul, zero_mul, zero_mul, zero_mul, zero_mul, zero_mul],
  -- substitute the values of the right-hand side of the equation
  rw [zero_mul, zero_mul, zero_mul, zero_mul, zero_mul, zero_mul, zero_mul, zero_mul],
  -- simplify the equation
  simp,
  -- rewrite the left-hand side of the equation
  rw [pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two],
  -- rewrite the right-hand side of the equation
  rw [mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod_eq_sub, mod
end

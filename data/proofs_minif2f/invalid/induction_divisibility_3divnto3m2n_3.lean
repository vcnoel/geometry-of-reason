import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  induction n with n ih,
  { rw [pow_zero, mul_zero, add_zero],
    exact dvd_rfl },
  { rw [pow_succ, pow_succ, mul_assoc, mul_add, add_assoc],
    exact dvd_add (ih (n^2)) (dvd_mul (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul (dvd_mul (dvd_pow (dvd_mul
end

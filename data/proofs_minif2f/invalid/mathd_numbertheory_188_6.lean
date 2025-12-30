import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  -- Use the definition of gcd to get the equation
  rw nat.gcd_def at *,
  -- Use the fact that gcd is a multiplicative function
  have h1 := nat.gcd_mul_left 12 15,
  have h2 := nat.gcd_mul_right 12 11,
  -- Use the fact that gcd is a multiplicative function
  have h3 := nat.gcd_mul_left 12 12,
  -- Use the fact that gcd is a multiplicative function
  have h4 := nat.gcd_mul_right 12 12,
  -- Use the fact that gcd is a multiplicative function
  have h5 := nat.gcd_mul_left 12 12,
  -- Use the fact that gcd is a multiplicative function
  have h6 := nat.gcd_mul_right 12 12,
  -- Use the fact that gcd is a multiplicative function
  have h7 := nat.gcd_mul_left 12 12,
  -- Use the fact that gcd is a multiplicative function
  have h8 := nat.gcd_mul_right 12 12,
  -- Use the fact that gcd is a multiplicative function
  have h9 := nat.gcd_mul_left 12
end

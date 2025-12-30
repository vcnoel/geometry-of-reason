import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2015_p10
  (x y : ℤ)
  (h₀ : 0 < y)
  (h₁ : y < x)
  (h₂ : x + y + (x * y) = 80) :
  x = 26 :=
begin

  -- First, we'll isolate x in the equation x + y + (x * y) = 80
  have h₃ : x * (y + 1) = 80 - y,
  { rw [add_assoc, add_comm (x * y) 1, mul_add, add_comm (x * y) 1, add_assoc, add_assoc],
    exact (mul_add _ _ _).symm },
  
  -- Now, we can use the fact that x * (y + 1) is a multiple of (y + 1) to
  -- deduce that y + 1 is a divisor of 80 - y.
  have h₄ : (80 - y) % (y + 1) = 0,
  { exact (dvd_of_mul_dvd_mul_left _ _).symm },
  
  -- Since 80 - y and y + 1 are relatively prime, this implies that
  -- y + 1 divides 80 - y.
  have h₅ : y + 1 = 80 - y,
  { rw [← not_divisible_by_zero, not_divisible_by_zero],
    exact (divisor_divides_iff _ _
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p2
  (x : ℝ)
  (h₀ : (10:ℝ)^x * 100^(2 * x) = 1000^5) :
  x = 3 :=
begin

  -- Given equation: 10^x * 100^(2 * x) = 1000^5
  -- We can rewrite 100 as 10^2 and 1000 as 10^3
  rw [pow_two 100, pow_three 1000],
  -- Now the equation becomes: 10^x * (10^2)^(2 * x) = (10^3)^5
  -- We can use the exponent rule (a^m)^n = a^(m*n)
  rw [pow_mul],
  -- Now the equation becomes: 10^x * 10^(2 * 2 * x) = 10^(3 * 5)
  -- We can use the exponent rule a^m * a^n = a^(m + n)
  rw [pow_add],
  -- Now the equation becomes: 10^x * 10^(4 * x) = 10^15
  -- We can use the exponent rule a^m * a^n = a^(m + n)
  rw [pow_add],
  -- Now the equation becomes: 10^(x + 4 * x) = 10^15
  -- We can use the exponent
end

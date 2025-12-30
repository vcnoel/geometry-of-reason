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

  -- 100^(2*x) = 10^(2*x * log 100 / log 10) = 10^(2*x * 2) = 10^(4*x)
  have h₁ : 100^(2 * x) = 10^(4 * x),
  by rw [←pow_two, pow_mul, pow_mul, log_def, mul_assoc, mul_comm, mul_assoc, log_def, mul_assoc, mul_comm, mul_assoc, log_def],
  -- 1000^5 = 10^(5*log 1000 / log 10) = 10^(5*3) = 10^15
  have h₂ : 1000^5 = 10^(5 * 3),
  by rw [pow_mul, log_def, mul_assoc, mul_comm, mul_assoc, log_def, mul_assoc, mul_comm, mul_assoc, log_def],
  -- (10^x * 10^(4*x)) = 10^(x + 4*x) = 10^5 * x = 10^15
  have h₃ : (10^x * 100^(2*x)) = 10^(x + 4*x),
  by rw [h
end

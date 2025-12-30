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

  -- 1. We will use the fact that 100 = 10^2
  have h₁ : 100 = 10^2,
  { rw [pow_two] },
  -- 2. Now, we substitute h₁ into the equation given in h₀
  have h₂ : (10^x) * (10^(2 * x))^2 = 10^5 * 10^5 * 10^5,
  { rw [pow_mul, h₁, pow_mul, pow_mul, pow_mul, pow_mul, pow_mul] },
  -- 3. Now, we use the fact that a^(bc) = (a^b)^c
  have h₃ : (10^x) * (10^(2*x))^2 = 10^(x + 2*x) * 10^(5 + 5 + 5),
  { rw [pow_mul, pow_mul] },
  -- 4. Now, we use the fact that a^(b+c) = a^b * a^c
  have h₄ : 10^(x + 2*x) * 10^(5 + 5 + 5) = 10^(x + 2
end

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

  rw [← pow_add, ← pow_mul, pow_two, pow_two, pow_add, pow_add, pow_add, pow_add, pow_add, pow_add],
  have h₁ : (10:ℝ)^x = 10^(x * 1),
  { rw [pow_real, pow_real, one_mul] },
  have h₂ : 100^(2 * x) = 10^(2 * x * 2),
  { rw [pow_real, pow_real, pow_real, two_mul, two_mul] },
  have h₃ : 1000^5 = 10^(5 * 3),
  { rw [pow_real, pow_real, pow_real, pow_real, pow_real, pow_real, five_mul, five_mul, five_mul, five_mul, five_mul] },
  have h₄ : 10^(x * 1) * 10^(2 * x * 2) = 10^(x * 1 + 2 * x * 2),
  { rw [pow_mul] },
  have h₅ : 10^(x * 1 + 2 * x * 2) = 10^(x * (1 + 2 * 2
end

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

  have h₁ : (10 : ℝ)^x * 100^(2 * x) = 10^(3 * x) * 10^(2 * x) * 10^(x),
  by simp [pow_mul, pow_mul, pow_mul],
  have h₂ : 10^(3 * x) * 10^(2 * x) * 10^(x) = 10^(3 * x + 2 * x + x),
  by simp [pow_add],
  have h₃ : 3 * x + 2 * x + x = 5 * x,
  by ring,
  have h₄ : 10^(5 * x) = 1000^5,
  by simp [pow_mul, pow_mul, pow_mul],
  have h₅ : 10^(5 * x) = (10^5)^x,
  by simp [pow_mul],
  have h₆ : (10^5)^x = 1000^5,
  by simp [pow_mul, pow_mul],
  have h₇ : x = 3,
  by simp [h₀, h₁, h₂, h₃, h₄, h₅, h₆
end

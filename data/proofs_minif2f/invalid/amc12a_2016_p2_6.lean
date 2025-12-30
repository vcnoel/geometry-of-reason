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

  have h₁ : (10:ℝ)^x * 100^(2 * x) = 10^(x) * 10^(2 * x * log₂(10)) * 10^(5 * log₂(10)),
  { simp only [log₂_10, pow_mul, pow_add, pow_pow, pow_one, log2_pow] },
  have h₂ : 10^(x) * 10^(2 * x * log₂(10)) * 10^(5 * log₂(10)) = 10^(x + 2 * x * log₂(10) + 5 * log₂(10)),
  { simp only [pow_mul, pow_add] },
  have h₃ : 10^(x + 2 * x * log₂(10) + 5 * log₂(10)) = 10^(x + 20 + 5 * log₂(10)),
  { simp only [log2_10, pow_add, pow_mul, pow_one] },
  have h₄ : x + 20 + 5 * log₂(10) = 20 + 5 * log₂(10) + x,
  { ring },
  have h�
end

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

  have h₁ : 10^x * 100^(2 * x) = 10^(x + 2 * x) * 100^(2 * x),
  { apply pow_mul },
  have h₂ : 10^(x + 2 * x) * 100^(2 * x) = 10^(x + 2 * x) * 10^(2 * 2 * x),
  { apply pow_mul },
  have h₃ : 10^(x + 2 * x) * 10^(2 * 2 * x) = 10^(x + 2 * x + 2 * 2 * x),
  { apply pow_add },
  have h₄ : 10^(x + 2 * x + 2 * 2 * x) = 10^(x + 2 * x + 4 * x),
  { apply pow_add },
  have h₅ : 10^(x + 2 * x + 4 * x) = 10^(7 * x),
  { apply pow_mul },
  have h₆ : 10^(7 * x) * 100^(2 * x) = 1000^(5),
  { apply
end

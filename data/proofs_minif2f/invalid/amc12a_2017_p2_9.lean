import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p2
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x + y = 4 * (x * y)) :
  1 / x + 1 / y = 4 :=
begin

  have h₃ : (x * y) ≠ 0 := mul_ne_zero h₀ h₁,
  have h₄ : (1 / x) + (1 / y) = ((y + x) / (x * y)),
  by { rw [div_add_div, div_mul_eq_mul_div] },
  have h₅ : ((y + x) / (x * y)) = ((4 * x * y) / (x * y)),
  by { rw [h₂] },
  have h₆ : (4 * x * y) / (x * y) = 4,
  by { rw [div_mul_eq_mul_div] },
  have h₇ : (1 / x) + (1 / y) = 4,
  by { rw [h₄, h₅, h₆] },
  exact h₇,

end

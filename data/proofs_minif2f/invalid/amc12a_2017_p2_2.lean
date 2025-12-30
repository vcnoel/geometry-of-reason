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

  have h₃ : (1 / x) + (1 / y) = 4 / (x * y),
  by {rw [div_eq_inv_mul], linarith},
  have h₄ : x * y = (x + y) / 4,
  by {rw [h₂], linarith},
  have h₅ : (1 / x) + (1 / y) = 4 / ((x + y) / 4),
  by {rw [h₄], linarith},
  have h₆ : (1 / x) + (1 / y) = 16 / (x + y),
  by {rw [h₅], linarith},
  have h₇ : (1 / x) + (1 / y) = 4,
  by {rw [h₆, h₂], linarith},
  exact h₇,

end

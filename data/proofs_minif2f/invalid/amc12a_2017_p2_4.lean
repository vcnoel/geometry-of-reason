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

  have h₃ : x * y ≠ 0,
    by {rwa [h₀, h₁] at x * y,},

  have h₄ : (1 / x + 1 / y) = (x + y) / (x * y),
    by {rwa [inv_add_inv_eq_add, inv_mul_inv_eq_mul] at 1 / x + 1 / y,},

  have h₅ : (x + y) = 4 * (x * y),
    by {rwa h₂ at x + y,},

  have h₆ : (x + y) / (x * y) = 4,
    by {rwa h₅ at (x + y) / (x * y),},

  rwa h₆ at h₄,

end

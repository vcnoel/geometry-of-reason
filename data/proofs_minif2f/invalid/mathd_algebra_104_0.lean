import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  have h₁ := real.div_eq_div_iff (125 * 12) (8 * 12) x,
  have h₂ := real.div_eq_div_iff (125 * 12) (8 * 12) (375 / 2),
  have h₃ := real.div_div_eq_mul_inv x (8 * 12),
  have h₄ := real.div_div_eq_mul_inv (375 / 2) (8 * 12),
  have h₅ := real.mul_eq_mul_comm (125 * 12) (8 * 12) (375 / 2),
  have h₆ := real.mul_inv_cancel_right (8 * 12) (125 * 12),
  have h₇ := real.div_div_eq_mul_inv (375 * 125) (8 * 12 * 125),
  have h₈ := real.div_div_eq_mul_inv (8 * 12 * 375) (8 * 12 * 125),
  have h₉ := real.div_div_eq_mul_inv (3 * 8 * 12 * 125) (8 * 12 * 125),
  have h₁₀ := real.div_div_eq_mul_inv (3 * 8 * 12
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p8
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x ≠ y)
  (h₃ : x + 2 / x = y + 2 / y) :
  x * y = 2 :=
begin

  have h₄ := h₃.subst (add_div_eq_mul_div_right 2),
  have h₅ := h₄.subst (mul_div_cancel₀ h₀),
  have h₆ := h₅.subst (mul_div_cancel₀ h₁),
  have h₇ := h₆.subst (sub_eq_zero.mpr h₂),
  exact h₇

end

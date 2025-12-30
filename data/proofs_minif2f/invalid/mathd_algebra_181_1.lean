import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  have h₂ := h₁,
  have h₃ := (add_div (n + 5) (n - 3) 1).2,
  have h₄ := (eq_div_iff h₂).2 h₃,
  have h₅ := (mul_eq_mul_left 1 n).2 h₄,
  have h₆ := (add_eq_add_left 3 n).2 h₅,
  have h₇ := (eq_add_cancel_left 3 n).2 h₆,
  have h₈ := (eq_sub_cancel_left 11 n).2 h₇,
  exact h₈

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  have h₄ : n ≠ 0, by { intro h₅, have h₆ := (h₂.trans h₃).ne, have h₇ := h₅.pow_sub_one_ne_zero h₆, exact h₇.resolve_right h₀ },
  have h₈ : n < 0, by { have h₉ := (h₂.trans h₃).ne, have h₁₀ := h₉.pow_sub_one_lt_zero, exact h₁₀.resolve_left h₁ },
  have h₁₁ : n = -4, by { have h₁₂ := (h₈.not_le.trans h₈.le).ne, have h₁₃ := h₁₂.abs_pos, have h₁₄ := h₁₃.eq_abs, have h₁₅ := h₁₄.resolve_left h₄, exact h₁₅.resolve_right h₁ },
  exact h₁₁,

end

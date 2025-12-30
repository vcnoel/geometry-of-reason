import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_136
  (n : ℕ)
  (h₀ : 123 * n + 17 = 39500) : n = 321 :=
begin

  -- 1 / 0
  by_contradiction h,
  have h₁ : 123 * n + 17 = 39500 := h₀,
  have h₂ : 123 * n = 39883 := by { rw [h₁, sub_add_cancel 39500 17] },
  have h₃ : 123 * n = 123 * 321 := by { rw [eq_of_add_eq_add_right h₂ (123 * 321)] },
  have h₄ : n = 321 := by { rw [eq_of_mul_eq_mul_left h₃ 123] },
  exact h h₄,

end

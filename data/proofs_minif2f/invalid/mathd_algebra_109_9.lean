import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_109
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 12)
  (h₁ : a = 4) :
  b = 0 :=
begin

  have h₂ := h₀,
  have h₃ := h₁,
  have h₄ : a = 4 := h₃,
  have h₅ : 3 * a + 2 * b = 12 := h₂,
  have h₆ : 3 * 4 + 2 * b = 12 := h₄,
  have h₇ : 12 + 2 * b = 12 := h₆,
  have h₈ : 2 * b = 0 := h₇,
  have h₉ : b = 0 := by { rw [← mul_div_cancel_left (2 * b) 2, h₈], },
  exact h₉,

end

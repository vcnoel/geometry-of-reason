import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_433
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * real.sqrt (2 * x - 7) - 8) :
  f 8 = 1 :=
begin

  have h₁ := h₀ 8,
  have h₂ := real.sqrt (2 * 8 - 7),
  have h₃ := real.sqrt (14),
  have h₄ := 3 * h₃,
  have h₅ := h₄ - 8,
  have h₆ := h₅ = 1,
  exact h₆

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sqrtxymulxmyeqxpy_xpygeq4
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y ≤ x)
  (h₂ : real.sqrt (x * y) * (x - y) = (x + y)) :
  x + y ≥ 4 :=
begin

  have h₃ : 0 < x + y := by { rw [h₂], exact real.sqrt_pos.mpr (mul_pos h₀.1 h₀.2) },
  have h₄ : 0 < x - y := by { rw [h₂], exact real.sqrt_pos.mpr (sub_pos h₀.1 h₁) },
  have h₅ : x + y ≥ 2 * real.sqrt (x * y) := by { rw [h₂], exact (real.sqrt_pos.mpr (mul_pos h₀.1 h₀.2)).ge },
  have h₆ : real.sqrt (x * y) ≥ (x + y) / 2 := by { rw [h₂], exact (real.sqrt_pos.mpr (mul_pos h₀.1 h₀.2)).ge },
  have h₇ : 2 * real.sqrt (x * y) ≥ (x + y) + (x - y) := by { rw [h₂], exact (add_le_add_iff_left _ _).mpr h₅ },
  have h₈ : (x + y) + (x - y) = 2 * x := by { rw [h₂],
end

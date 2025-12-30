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

  have h₃ : 0 < y - x := by { rwa [sub_nonneg, neg_eq_zero] at h₁, },
  have h₄ : (y - x) * (y - x) ≥ 0 := by { rw mul_nonneg, },
  have h₅ : (y - x) * (y - x) ≥ 0 := by { rw mul_nonneg, },
  have h₆ : (y - x) * (y - x) ≥ 0 := by { rw mul_nonneg, },
  have h₇ : 0 ≤ (y - x) * (y - x) := by { rwa [sub_nonneg, neg_eq_zero] at h₄, },
  have h₈ : 0 ≤ (y - x) * (y - x) := by { rwa [sub_nonneg, neg_eq_zero] at h₅, },
  have h₉ : 0 ≤ (y - x) * (y - x) := by { rwa [sub_nonneg, neg_eq_zero] at h₆, },
  have h₁₀ : real.sqrt (x * y) * (x - y)
end

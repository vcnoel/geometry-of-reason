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

  have h₃ : 0 < x + y := by linarith,
  have h₄ : 0 < x - y := by linarith,
  have h₅ : x - y < x + y := by linarith,
  have h₆ : 0 < (x + y) * (x - y) := by linarith,
  have h₇ : 0 < x * y := by linarith,
  have h₈ : 0 < real.sqrt (x * y) := by linarith,
  have h₉ : 0 < real.sqrt (x * y) * (x - y) := by linarith,
  have h₁₀ : real.sqrt (x * y) * (x - y) = (x + y) := by linarith,
  have h₁₁ : (x + y) * (x - y) = (x * y) := by linarith,
  have h₁₂ : (x + y) * (x - y) ≥ 0 := by linarith,
  have h₁₃ : 0 ≤ x * y := by linarith,
  have h₁₄ : real.sqrt (x * y) ≥
end

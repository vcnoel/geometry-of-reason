import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  -- We will use the fact that for any x, y in ℝ, x^3 - y^2 ≥ 0.
  -- This is because the function f(x) = x^3 - y^2 is continuous and has a minimum at (0,0).
  have h₂ : 0 ≤ x^3 - 2^y := by {
    have h₂' : 0 ≤ x^3 := by { exact pow_nonneg (le_refl ℝ) 3 },
    have h₂'' : 0 ≤ 2^y := by { exact pow_nonneg (le_refl ℝ) y },
    exact sub_nonneg h₂' h₂'',
  },
  -- Now, we can apply the real.sqrt_nonneg function to both sides of the inequality.
  have h₃ : 0 ≤ real.sqrt (x^3 - 2^y) := by { exact real.sqrt_nonneg h₂ },
  -- Now, we can use the fact that the real.sqrt function is strictly increasing on the interval [0,∞).
  have h₄ : real.sqrt (x^3 - 2^y) = real.sqrt (11^2) := by {
    have h₄'
end

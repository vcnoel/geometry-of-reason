import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.logb 2 (real.logb 8 x) = real.logb 8 (real.logb 2 x)) :
  (real.logb 2 x)^2 = 27 :=
begin

  let h : ℝ → ℝ by λy, real.logb y^2,
  let h₁ : ℝ → ℝ by λy, real.logb y^3,
  let h₂ : ℝ → ℝ by λy, real.logb y^6,
  let h₃ : ℝ → ℝ by λy, real.logb y^9,
  let h₄ : ℝ → ℝ by λy, real.logb y^12,
  let h₅ : ℝ → ℝ by λy, real.logb y^24,
  let h₆ : ℝ → ℝ by λy, real.logb y^36,
  let h₇ : ℝ → ℝ by λy, real.logb y^48,
  let h₈ : ℝ → ℝ by λy, real.logb y^64,
  let h₉ : ℝ → ℝ by λy, real.logb y^72,
  let h₁₀ : ℝ → ℝ by λy, real.logb y^108,
  let h₁₁ : ℝ → ℝ by λy, real.logb y^144,
  let h₁₂ : ℝ → ℝ by λy, real.logb y^192,
 
end

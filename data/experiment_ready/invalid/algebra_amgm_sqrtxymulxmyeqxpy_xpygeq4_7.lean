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

  have h₃ : 0 < x * y,
  from and.intro (and.intro h₀.1 h₀.2) (and.intro h₀.1 h₀.2),
  have h₄ : 0 < real.sqrt (x * y),
  from real.sqrt_pos h₃,

  have h₅ : 0 < real.sqrt (x * y) * (x - y),
  from mul_pos h₄ (sub_pos h₁ h₀.2),

  have h₆ : real.sqrt (x * y) * (x - y) = (x + y),
  from h₂,

  have h₇ : x + y ≥ real.sqrt (x * y) * (x - y),
  from le_refl _ (h₆),

  have h₈ : real.sqrt (x * y) * (x - y) ≥ 0,
  from mul_nonneg h₄ (sub_nonneg h₁ h₀.2),

  have h₉ : real.sqrt (x * y) * (x - y) ≥ 0,
  from h₈,

  have h₁₀ : 0 ≤ real.sqrt (x * y) * (x
end

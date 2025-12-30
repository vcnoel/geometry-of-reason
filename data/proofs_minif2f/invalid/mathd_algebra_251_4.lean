import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  -- Multiply both sides of the equation by x
  have h₂ : (3 + 1/x) * x = (7/x) * x,
  from mul_eq_mul_left (h₁),

  -- Expand the left side of the equation
  have h₃ : 3 * x + 1 = 7,
  from (add_eq_add_left (mul_eq_mul_left rfl)).mp (eq.mp (mul_eq_mul_left rfl)).mp h₂,

  -- Subtract 1 from both sides of the equation
  have h₄ : 3 * x = 6,
  from sub_eq_sub_left (eq.mp (sub_eq_sub_left rfl)).mp h₃,

  -- Divide both sides of the equation by 3
  have h₅ : x = 2,
  from div_eq_div_left (eq.mp (div_eq_div_left rfl)).mp h₄,

  -- Conclude the proof by applying the definition of equality
  show x = 2,
  from eq.mp (eq_symm h₅)

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  -- 1. Rearrange the second equation to isolate y
  have h₂ : y = 45 - 3 * x,
  by { rw [sub_eq_add_neg, h₁, sub_eq_add_neg, h₀, neg_mul_neg, neg_add], },

  -- 2. Square both sides of the equation
  have h₃ : (y)^2 = (45 - 3 * x)^2,
  by { rw [h₂], },

  -- 3. Expand the right side of the equation
  have h₄ : (y)^2 = 2025 - 270 * x + 9 * x^2,
  by { rw [pow_two], },

  -- 4. Rearrange the equation to isolate x^2
  have h₅ : x^2 - y^2 = 217,
  by { rw [h₃, h₄, sub_eq_add_neg, sub_eq_add_neg, neg_mul_neg, neg_add], },

end

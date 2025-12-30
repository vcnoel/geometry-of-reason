import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  -- We are given that 0 < x and 0 < y, so we can divide both sides of h₂ by x^2
  have h₃ : 6 = 2 * (6 * y^2 / x^2),
  { rw [h₂],
    -- Since 0 < x, we have 0 < x^2, so we can divide both sides of h₂ by x^2
    divide_eq_div_div_left 6 (6 * y^2) x^2 x^2 },
  -- Since 0 < y, we have 0 < y^2, so we can divide both sides of h₃ by 6
  have h₄ : 1 = 2 * (y^2 / 3),
  { divide_eq_div_div_left 6 (6 * y^2) 6 3 },
  -- Since 0 < y, we have 0 < y^2, so we can divide both sides of h₄ by 3
  have h₅ : 1/3 = y^2 / 3,
  { divide_eq_div_div_left 1 3 (y^2 / 3) 3 3 },

end

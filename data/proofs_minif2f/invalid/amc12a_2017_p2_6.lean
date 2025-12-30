import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p2
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x + y = 4 * (x * y)) :
  1 / x + 1 / y = 4 :=
begin

  -- Solve the equation for y
  have h₃ : y = 4 / (x + 1),
  by { rw h₂, exact divide_div_eq_div_mul x (x + 1) (4 * y) },
  -- Substitute y into the equation
  have h₄ : 1 / x + 1 / (4 / (x + 1)) = 4,
  by { rw h₃, exact (eq.mpr (eq.refl _) h₂) },
  -- Simplify the equation
  have h₅ : (x + 1) / 4 = 1 / x,
  by { rw h₄, exact add_div_eq_add_mul_left x 1 (4 * 1) },
  -- Solve the equation for x
  have h₆ : x = 3,
  by { rw h₅, exact mul_div_eq_div_mul 1 x 4 },
  -- Substitute x into the equation
  have h₇ : 1 / 3 + 1 / (4 / (3 + 1)) = 4,
  by { rw h₆, exact (eq.mpr (eq.refl _) h₂) },

end

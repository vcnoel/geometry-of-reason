import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  -- We first express y in terms of x by using the second equation
  -- and the first equation. We solve for y in the first equation and substitute
  -- into the second equation to find a quadratic equation in x.
  let y_expr : ℕ := x^2 * y + x * y^2 / (x * y + (x + y)),
  have y_expr_eq : y_expr = x * y + (x^2 * y + x * y^2) / (x * y + (x + y)),
  by { refl },
  have y_expr_eq_2 : y_expr = x * y + 880 / (x * y + (x + y)),
  by { rw y_expr_eq, rw h₂ },
  have y_expr_eq_3 : y_expr = x * y + 880 / 71,
  by { rw y_expr_eq_2, rw h₁ },
  have y_expr_eq_4 : y_expr = 880 / 71 * x / x + 880 / 71,
  by { rw y_expr_eq_3, ring },
  have y_expr_eq_5 : y_expr = 880 / 71 + 880 / 71 *
end

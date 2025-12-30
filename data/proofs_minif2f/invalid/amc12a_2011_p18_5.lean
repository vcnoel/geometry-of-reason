import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2011_p18
  (x y : ℝ)
  (h₀ : abs (x + y) + abs (x - y) = 2) :
  x^2 - 6 * x + y^2 ≤ 9 :=
begin

  -- First, we use the triangle inequality to rewrite the first term
  have h₁ := abs (x + y) + abs (x - y) = 2,
  -- Then, we use the triangle inequality to rewrite the second term
  have h₂ := abs (x + y) - abs (x - y) = 2,
  -- Then, we use the triangle inequality to rewrite the third term
  have h₃ := abs (x - y) + abs (x + y) = 2,
  -- Then, we use the triangle inequality to rewrite the fourth term
  have h₄ := abs (x - y) - abs (x + y) = 2,
  -- Then, we use the triangle inequality to rewrite the fifth term
  have h₅ := abs (x + y) - abs (x - y) = 2,
  -- Then, we use the triangle inequality to rewrite the sixth term
  have h₆ := abs (x - y) + abs (x + y) = 2,
  -- Then, we use the triangle inequality to rewrite the seventh term
  have h₇ := abs (x + y) + abs (x
end

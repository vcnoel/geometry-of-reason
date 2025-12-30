import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p7
  (x y : ℝ) :
  1 ≤ ((x * y) - 1)^2 + (x + y)^2 :=
begin

  have h1 : (x * y - 1)^2 + (x + y)^2 ≥ 0,
  { apply add_nonneg },
  have h2 : (x * y - 1)^2 + (x + y)^2 ≥ 2 * (x * y - 1) * (x + y),
  { apply add_nonneg },
  have h3 : 2 * (x * y - 1) * (x + y) ≥ 2 * (x * y - 1),
  { apply mul_nonneg },
  have h4 : 2 * (x * y - 1) ≥ 0,
  { apply mul_nonneg },
  have h5 : (x * y - 1)^2 + (x + y)^2 ≥ 2 * (x * y - 1),
  { apply add_le_add_of_nonneg_left h3 },
  have h6 : (x * y - 1)^2 + (x + y)^2 ≥ 2 * (x * y - 1),
  { apply add_le_add_of_nonneg_left h4 },
  have h7 : (x * y - 1)^2 + (x +
end

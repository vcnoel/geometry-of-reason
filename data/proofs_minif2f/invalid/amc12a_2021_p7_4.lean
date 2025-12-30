import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p7
  (x y : ℝ) :
  1 ≤ ((x * y) - 1)^2 + (x + y)^2 :=
begin

  let a := x * y,
  let b := x + y,
  have h1 : 0 ≤ a, from le_of_mul_le_mul_right (le_of_eq (add_zero y)) (le_of_eq (add_zero x)),
  have h2 : 0 ≤ b, from le_of_eq (add_zero x),
  have h3 : 0 ≤ a^2, from pow_nonneg h1 2,
  have h4 : 0 ≤ b^2, from pow_nonneg h2 2,
  have h5 : 0 ≤ (a^2 + b^2), from le_of_add_le_add_left h3 h4,
  have h6 : (a^2 + b^2) ≥ 2, from le_of_lt_add_one (lt_of_lt_of_le h5 zero_lt_two),
  have h7 : ((a - 1)^2 + b^2) ≥ 2, from le_trans h6 (le_of_sub_le_sub_left h6 h5),
  have h8 : (a^2 - 2*a + 1 + b^2) ≥ 2, from le_trans h7 (le_of_add_le_add_left h5 (le
end

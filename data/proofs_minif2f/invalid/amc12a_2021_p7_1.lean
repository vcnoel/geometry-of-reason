import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p7
  (x y : ℝ) :
  1 ≤ ((x * y) - 1)^2 + (x + y)^2 :=
begin

  have h1 : ∀ (x y : ℝ), (x * y - 1)^2 + (x + y)^2 ≥ 0,
  { intros x y,
    have h2 : (x * y - 1)^2 ≥ 0,
    { apply sq_nonneg },
    have h3 : (x + y)^2 ≥ 0,
    { apply sq_nonneg },
    exact add_nonneg h2 h3 },
  have h4 : ∀ (x y : ℝ), (x * y - 1)^2 + (x + y)^2 ≥ 2,
  { intros x y,
    have h5 : (x * y - 1)^2 ≥ 0,
    { apply sq_nonneg },
    have h6 : (x + y)^2 ≥ 0,
    { apply sq_nonneg },
    have h7 : (x * y - 1)^2 + (x + y)^2 ≥ (x * y - 1)^2,
    { apply add_ge_left_of_le h5 },
    have h8 : (x * y - 1)^2 + (x + y)^2 ≥ (x + y)^2,
    { apply add
end

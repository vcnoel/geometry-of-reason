import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p7
  (x y : ℝ) :
  1 ≤ ((x * y) - 1)^2 + (x + y)^2 :=
begin

  by_cases Hxy : (x * y) - 1 = 0,
  { subst Hxy,
    rw [sub_zero, zero_pow (two_ne_zero)],
    rw [zero_mul, add_zero],
    exact le_add_of_nonneg_of_nonneg one_le_one zero_le_one },
  { have H1 : (x * y) - 1 > 0,
    { rwa [sub_pos, sub_pos_iff_lt_add] },
    have H2 : (x * y) - 1 ≥ 0,
    { rwa [sub_nonneg, sub_nonneg_iff_le_add] },
    have H3 : (x * y) - 1 > 0,
    { rwa [sub_pos, sub_pos_iff_lt_add] },
    have H4 : (x * y) - 1 ≥ 0,
    { rwa [sub_nonneg, sub_nonneg_iff_le_add] },
    have H5 : (x * y) - 1 > 0,
    { rwa [sub_pos, sub_pos_iff_lt_add] },
    have H6 : (x * y) - 1 ≥ 0,
    { rwa [sub_nonneg, sub_non
end

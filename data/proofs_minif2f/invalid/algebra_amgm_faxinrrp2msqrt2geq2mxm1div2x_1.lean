import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intros x hx,
  have h1 : 1 / (2 * x) ≥ 0,
  { apply div_nonneg, apply mul_nonneg, apply inv_nonneg, apply mul_nonneg, apply one_nonneg, apply hx },
  have h2 : 1 / (2 * x) ≤ 1,
  { apply div_le_one_of_le_mul_one, apply mul_le_one, apply one_le_two, apply hx },
  have h3 : real.sqrt 2 - 2 ≥ 0,
  { apply sub_nonneg, apply real.sqrt_nonneg, apply two_pos },
  have h4 : 2 - real.sqrt 2 - 2 + 1 / (2 * x) ≥ 0,
  { apply add_nonneg, apply sub_nonneg, apply h3, apply h1 },
  have h5 : 2 - x - 1 / (2 * x) ≥ 0,
  { apply sub_nonneg, apply sub_nonneg, apply two_pos, apply hx },
  have h6 : 2 - real.sqrt 2 - (2 - x - 1 / (2 * x)) ≥ 0,
  { apply sub_nonneg, apply h4,
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  by_contradiction h,
  by_contradiction h1,
  have h2 := (neg_le_neg_iff.mp h),
  have h3 := (neg_le_neg_iff.mp h1),
  have h4 := (add_le_add_iff_right.mp h3),
  have h5 := (mul_le_mul_of_nonneg_of_le a h2),
  have h6 := (mul_le_mul_of_nonneg_of_le a h4),
  have h7 := (add_le_add_iff_left.mp h6),
  have h8 := (add_le_add_iff_left.mp h7),
  have h9 := (sub_nonneg.mp (sub_nonneg.mp h8)),
  have h10 := (le_of_not_gt h9),
  have h11 := (not_le.mp h10),
  have h12 := (lt_of_not_ge h11),
  have h13 := (le_of_not_gt (not_le.mp (lt_asmpositive_le_of_neg_le h12))),
  have h14 := (neg_le_neg_iff.mp h13),
  have h15 := (neg_le_neg_iff.mp h14),
  have h16 := (add_le_add_iff_right.mp h15),
  have h17 := (mul
end

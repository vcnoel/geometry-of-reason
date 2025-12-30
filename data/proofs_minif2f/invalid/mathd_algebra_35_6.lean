import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_35
  (p q : ℝ → ℝ)
  (h₀ : ∀ x, p x = 2 - x^2)
  (h₁ : ∀ x ≠ 0, q x = 6 / x) :
  p (q 2) = -7 :=
begin

  apply eq_of_abs_eq (abs_eq_zero.2),
  apply abs_of_nonneg,
  apply le_of_lt,
  apply neg_le_neg,
  apply (h₁ 2),
  apply (h₀ (h₁ 2)),
  apply two_ne_zero,
  apply h₁,
  apply two_ne_zero,
  apply mul_nonneg,
  apply le_of_lt,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply neg_le_neg,
  apply
end

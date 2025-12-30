import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_327
  (a : ℝ)
  (h₀ : 1 / 5 * abs (9 + 2 * a) < 1) :
  -7 < a ∧ a < -2 :=
begin

  have h₁ : 9 + 2 * a > 0,
  { have h₂ : a < -9 / 2,
    { rw div_neg,
      exact neg_lt_neg (abs_nonpos (2 * a)) (lt_neg (abs_pos 9)),
      exact abs_nonneg (2 * a),
      exact lt_neg (abs_pos 9) },
    exact add_lt_add h₂ (abs_nonpos a) (abs_nonpos a) },
  have h₂ : 9 + 2 * a ≠ 0,
  { intro h₃,
    have h₄ : 2 * a = -9,
    { rw h₃ },
    have h₅ : a = -9 / 2,
    { divide_eq h₄ 2 },
    exact abs_nonpos a h₅ },
  have h₃ : 1 / 5 * abs (9 + 2 * a) < 1,
  { exact h₀ },
  have h₄ : abs (9 + 2 * a) < 5,
  { have h₅ : 1 / 5 < 1,
    { exact div_pos 1 5 (lt_pos 1 
end

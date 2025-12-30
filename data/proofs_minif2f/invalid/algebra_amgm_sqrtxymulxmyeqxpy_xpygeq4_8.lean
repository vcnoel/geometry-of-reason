import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sqrtxymulxmyeqxpy_xpygeq4
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y ≤ x)
  (h₂ : real.sqrt (x * y) * (x - y) = (x + y)) :
  x + y ≥ 4 :=
begin

  have h₃ : y ≤ x → y * x ≤ x^2,
  { intro h,
    have h₄ : x ≠ 0,
    { intro hx,
      have h₅ : 0 < x * y,
      { apply mul_pos,
        exact h₀.1,
        exact h₀.2 },
      have h₆ : x * y < x^2,
      { apply mul_lt_mul,
        exact h₅,
        exact h₅ },
      have h₇ : x^2 < 0,
      { apply lt_of_lt_of_le hx (pow_pos hx 2) },
      contradiction },
    have h₈ : x^2 ≠ 0,
    { exact pow_ne_zero (ne_of_gt hx) 2 },
    have h₉ : x^2 > 0,
    { apply pow_pos,
      exact h₈ },
    have h₁₀ : x * y ≤ x^2,
    { apply mul_le_mul_of_nonneg_right h h₉ },
    exact h₁₀ },
  have h₄ : x * y ≤ x^2,
  { apply h₃,
    exact h₁ },
  have h₅ :
end

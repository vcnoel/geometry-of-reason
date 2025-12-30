import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_101
  (x : ℝ)
  (h₀ : x^2 - 5 * x - 4 ≤ 10) :
  x ≥ -2 ∧ x ≤ 7 :=
begin

  have h₁ : x^2 - 5 * x - 14 ≤ 0,
  { rw [sub_le_sub_iff_left, sub_le_sub_iff_left],
    exact h₀ },
  have h₂ : x^2 - 5 * x + 3 ≥ 0,
  { rw [sub_nonneg, add_nonneg, sub_nonneg, sub_nonneg],
    exact h₁ },
  have h₃ : (x - 3)^2 ≥ 0,
  { rw [pow_two_nonneg, sub_nonneg],
    exact h₂ },
  have h₄ : x - 3 ≤ 0,
  { have h₅ : x - 3 = -(3 - x),
    { rw [sub_eq_neg_add],
      exact rfl },
    have h₆ : (x - 3)^2 = -(3 - x)^2,
    { rw [h₅, pow_two_neg],
      exact rfl },
    have h₇ : (x - 3)^2 ≥ 0 → -(3 - x)^2 ≤ 0,
    { exact h₆ },
    exact h₇ h₃ },
  have h₈ : x ≤ 3,
  {
end

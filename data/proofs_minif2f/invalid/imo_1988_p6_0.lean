import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1988_p6
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : (a * b + 1) ∣ (a^2 + b^2)) :
  ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1) :=
begin

  cases h₀ with ha hb,
  have h₂ : a * b > 0 := mul_pos ha hb,
  have h₃ : a * b + 1 > 0 := add_pos h₂ one_pos,
  have h₄ : a^2 + b^2 ≥ (a * b + 1)^2 := by {
    have h₅ : (a * b)^2 + 2 * a * b ≥ 0 := by {
      have h₆ : (a * b)^2 ≥ 0 := pow_nonneg h₂,
      have h₇ : 2 * a * b ≥ 0 := mul_nonneg h₂ h₂,
      exact add_nonneg h₆ h₇,
    },
    have h₈ : (a * b + 1)^2 = (a * b)^2 + 2 * a * b + 1 := by {
      ring,
    },
    exact le_add_of_nonneg_of_le h₅ (le_sub_of_add_le h₈),
  },
  have h₅ : (a * b + 1)^2 ≤ a^2 + b^2 := by {
    exact le_of_not_gt h�
end

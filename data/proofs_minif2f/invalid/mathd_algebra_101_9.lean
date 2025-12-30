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

  have h₁ := le_add_of_add_le_add_right h₀,
  have h₂ := le_sub_of_sub_le_sub_left h₁,
  have h₃ := add_le_add_right h₂ 5,
  have h₄ := add_le_add_left h₂ 5,
  have h₅ := add_le_add h₃ h₄,
  have h₆ := sub_le_sub h₅ (5 * 0),
  have h₇ := sub_le_sub h₆ (4 * 0),
  have h₈ := le_trans h₇ (le_of_eq (zero_le 0)),
  have h₉ := and.intro h₈ (le_of_eq (zero_le 0)),
  have h₁₀ := and.intro h₈ (le_of_eq (zero_le 0)),
  have h₁₁ := le_trans h₈ (le_of_eq (zero_le 0)),
  have h₁₂ := le_trans h₁₁ (le_of_eq (zero_le 0)),
  have h₁₃ := le_trans h₁₁ (le_of_eq (zero_le 0)),
  have h₁₄ := le_trans h₁₁ (le_of_eq (zero_le 
end

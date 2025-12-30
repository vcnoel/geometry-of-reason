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

  have h₁ := abs_le.2 (le_abs_self (x^2 - 5 * x - 4)),
  have h₂ := abs_le.2 (le_abs_self 10),
  have h₃ := le_trans h₁ h₀,
  have h₄ := le_trans h₂ h₀,
  have h₅ := sub_le_sub_left h₃ 4,
  have h₆ := sub_le_sub_left h₄ 4,
  have h₇ := add_le_add_left h₅ (-5),
  have h₈ := add_le_add_left h₆ (-5),
  have h₉ := add_le_add_left h₇ x,
  have h₁₀ := add_le_add_left h₈ x,
  have h₁₁ := le_trans h₉ (le_refl 0),
  have h₁₂ := le_trans h₁₀ (le_refl 0),
  have h₁₃ := le_trans h₁₁ (le_add_right (le_refl (-5)) x),
  have h₁₄ := le_trans h₁₂ (le_add_right (le_refl (-5)) x),
  have h₁₅ := le_add_of_add_le_add_right h
end

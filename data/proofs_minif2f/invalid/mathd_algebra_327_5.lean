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

  have h₁ := abs_le_of_le_of_abs h₀,
  have h₂ := le_abs_and_abs_le h₁,
  have h₃ := le_and_le_of_abs_le h₂,
  have h₄ := and_imp_left h₃,
  have h₅ := and_imp_right h₃,
  have h₆ := and_assoc h₄ h₅,
  have h₇ := and_comm h₆,
  have h₈ := and_assoc h₇ h₆,
  have h₉ := imp_and_right h₈,
  have h₁₀ := imp_and_left h₉,
  have h₁₁ := and_assoc h₁₀ h₉,
  have h₁₂ := and_comm h₁₁ h₉,
  have h₁₃ := and_assoc h₁₂ h₁₁,
  have h₁₄ := imp_and_right h₁₃,
  have h₁₅ := imp_and_left h₁₄,
  have h₁₆ := and_assoc h₁₅ h₁₄,
  have h₁₇ := and_comm h₁₆ h₁₄,
  have h₁₈ := and_assoc h₁₇
end

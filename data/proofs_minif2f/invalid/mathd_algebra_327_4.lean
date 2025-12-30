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

  have h₁ := abs_lt_abs.mp h₀,
  have h₂ := abs_lt_abs.mp h₁,
  have h₃ : 7 < abs (9 + 2 * a) := by { assumption, },
  have h₄ : abs (9 + 2 * a) < 7 + 2 * a := by { assumption, },
  have h₅ := lt_triv h₄,
  have h₆ := add_lt_add h₅ h₃,
  have h₇ := le_of_lt h₆,
  have h₈ := le_of_lt h₇,
  have h₉ := neg_le.2 h₈,
  have h₁₀ := le_of_lt h₇,
  have h₁₁ := add_le_add h₇ h₇,
  have h₁₂ := le_of_lt h₇,
  have h₁₃ := neg_le.2 h₁₂,
  have h₁₄ := le_of_lt h₁₂,
  have h₁₅ := le_of_lt h₇,
  have h₁₆ := neg_le.2 h₁₅,
  have h₁₇ := le_of_lt h₁
end

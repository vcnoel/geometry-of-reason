import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p5
  (x p : ℝ)
  (h₀ : x < 2)
  (h₁ : abs (x - 2) = p) :
  x - p = 2 - 2 * p :=
begin

  have h₂ := abs_of_pos (2 - x),
  have h₃ := abs_sub (2 * x) 4,
  have h₄ := abs_sub (2 * (2 - x)) 4,
  have h₅ := abs_of_nonneg (2 - x),
  have h₆ := le_abs_self (2 - x),
  have h₇ := le_of_not_le h₆ h₀,
  have h₈ := not_le_of_lt h₇,
  have h₉ := le_of_not_le h₆ h₈,
  have h₁₀ := le_of_not_le h₅ h₉,
  have h₁₁ := le_of_not_le h₅ h₁₀,
  have h₁₂ := abs_of_nonneg (2 - x),
  have h₁₃ := le_abs_self (2 - x),
  have h₁₄ := le_of_not_le h₁₃ h₀,
  have h₁₅ := not_le_of_lt h₁₄,
  have h₁₆ := le_of_not_le h₁₃ h₁₅,
  have h₁₇ := le_of_not_le h₁₂ h₁₆
end

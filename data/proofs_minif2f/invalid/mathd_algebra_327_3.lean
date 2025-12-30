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

  have h₁ := abs_le.2 (le_of_lt h₀),
  have h₂ := abs_le.1 h₁,
  have h₃ := add_le_add_left h₂ 2,
  have h₄ := add_le_add_right h₃ 9,
  have h₅ := add_lt_add_left h₂ 9,
  have h₆ := add_lt_add_right h₅ 2,
  have h₇ := lt_add_one h₆,
  have h₈ := lt_triv a,
  have h₉ := lt_of_le_of_lt h₈ h₇,
  have h₁₀ := and.intro h₉ h₆,
  exact h₁₀

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin

  have h₂ := eq_of_add_eq_add_right h₁,
  have h₃ := eq_of_add_eq_add_left h₂,
  have h₄ := eq_of_add_eq_add_left h₃,
  have h₅ := eq_of_add_eq_add_right h₄,
  have h₆ := eq_of_add_eq_add_right h₅,
  have h₇ := eq_of_add_eq_add_left h₆,
  have h₈ := eq_of_add_eq_add_right h₇,
  have h₉ := eq_of_add_eq_add_left h₈,
  have h₁₀ := eq_of_add_eq_add_right h₉,
  have h₁₁ := eq_of_add_eq_add_left h₁₀,
  have h₁₂ := eq_of_add_eq_add_right h₁₁,
  have h₁₃ := eq_of_add_eq_add_left h₁₂,
  have h₁₄ := eq_of_add_eq_add_right h₁₃,
  have h₁₅ := eq_of_add_eq_add_left h₁₄,
  have h₁₆ := eq_of_add_eq_add_right h₁₅,
  have h₁₇ := eq_of_add_eq_add_left h₁�
end

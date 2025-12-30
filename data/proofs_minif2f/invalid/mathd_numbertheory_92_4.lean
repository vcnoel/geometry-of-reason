import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_92
  (n : ℕ)
  (h₀ : (5 * n) % 17 = 8) :
  n % 17 = 5 :=
begin

  have h₁ := mod_eq_zero_of_mod_eq_mod,
  have h₂ := mod_eq_mod_of_sub_eq_sub,
  have h₃ := mod_eq_mod_of_add_eq_add,
  have h₄ := mod_eq_mod_of_sub_eq_sub,
  have h₅ := mod_add_right_cancel,
  have h₆ := mod_add_right_cancel,
  have h₇ := mod_eq_of_add_eq_mod,
  have h₈ := mod_eq_of_add_eq_mod,
  have h₉ := mod_eq_of_add_eq_mod,
  have h₁₀ := mod_eq_of_add_eq_mod,
  have h₁₁ := mod_eq_of_add_eq_mod,
  have h₁₂ := mod_eq_of_add_eq_mod,
  have h₁₃ := mod_eq_of_add_eq_mod,
  have h₁₄ := mod_eq_of_add_eq_mod,
  have h₁₅ := mod_eq_of_add_eq_mod,
  have h₁₆ := mod_eq_of_add_eq_mod,
  have h₁₇ := mod_eq_of_add_eq_mod,
  have h₁₈ := mod_eq_of_add_eq_mod,
  have h₁₉ := mod_eq_of_add_eq_mod,
  have h₂₀ :=
end

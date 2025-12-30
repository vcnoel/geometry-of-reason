import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_301
  (j : ℕ)
  (h₀ : 0 < j) :
  (3 * (7 * ↑j + 3)) % 7 = 2 :=
begin

  have h₁ := nat.mod_add_div (3 * (7 * ↑j + 3)) 7,
  have h₂ := nat.mod_add_div (7 * ↑j) 7,
  have h₃ := nat.mod_add_div (3 * 3) 7,
  have h₄ := mod_add_div 7 7,
  have h₅ := mod_add_div 3 7,
  have h₆ := mod_add_div 3 7,
  have h₇ := mod_add_div 6 7,
  have h₈ := mod_add_div 0 7,
  have h₉ := mod_add_div 0 7,
  have h₁₀ := mod_add_div 0 7,
  have h₁₁ := mod_add_div 0 7,
  have h₁₂ := mod_add_div 0 7,
  have h₁₃ := mod_add_div 0 7,
  have h₁₄ := mod_add_div 0 7,
  have h₁₅ := mod_add_div 0 7,
  have h₁₆ := mod_add_div 0 7,
  have h₁₇ := mod_add_div 
end

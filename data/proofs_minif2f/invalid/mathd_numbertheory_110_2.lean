import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  have h₃ : (a - b) % 10 = (a % 10 + b % 10 - 10 * (a % 10 + b % 10) / 10) % 10,
  by { apply mod_sub_mod, apply mod_mod_add, apply add_mod, apply mod_mod, apply mod_add, apply mod_mod },
  have h₄ : a % 10 + b % 10 - 10 * (a % 10 + b % 10) / 10 = 2,
  by {
    apply congr_arg,
    apply mod_mod_add,
    apply mod_mod_add,
    apply mod_mod,
    apply congr_arg,
    apply mod_mod_add,
    apply mod_mod_add,
    apply mod_mod,
    apply congr_arg,
    apply mod_mod_add,
    apply mod_mod_add,
    apply mod_mod,
    apply congr_arg,
    apply mod_mod_add,
    apply mod_mod_add,
    apply mod_mod,
    apply congr_arg,
    apply mod_mod_add,
    apply mod_mod_add,
    apply mod_mod,
    apply congr_arg,
    apply mod_mod_add,
    apply mod_mod_add,
    apply mod_mod,
    apply congr_arg,
    apply mod
end

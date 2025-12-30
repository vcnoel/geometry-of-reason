import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_370
  (n : ℕ)
  (h₀ : n % 7 = 3) :
  (2 * n + 1) % 7 = 0 :=
begin

  have h₁ : (2 * n + 1) % 7 = (2 * (n % 7) + 1) % 7,
  { apply nat.mod_mod (2 * n + 1) 7,
    apply nat.mod_mod n 7 },
  have h₂ : (2 * n + 1) % 7 = (2 * 3 + 1) % 7,
  { apply congr_arg (λ x, x % 7),
    apply congr_arg2 (λ x y, 2 * x + y) (mod_eq_of_lt (lt_of_le_of_lt (nat.zero_le _) (lt_add_one n))) h₀ },
  show (2 * 3 + 1) % 7 = 0,
  { apply congr_arg (λ x, x % 7),
    apply congr_arg2 (λ x y, 2 * x + y) (mod_eq_of_lt (lt_of_le_of_lt (nat.zero_le _) (lt_add_one 3))) rfl,
    apply congr_arg (λ x, x % 7),
    apply congr_arg2 (λ x y, x + y) (mod_eq_of_lt (lt_of_le
end

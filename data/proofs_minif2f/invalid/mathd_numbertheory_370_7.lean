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

  rw h₀,
  rw Nat.mod_add_div n 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7,
  rw Nat.mod_add_div 3 7
end

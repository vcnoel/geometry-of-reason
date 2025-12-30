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

  have h₁ : (2 * n + 1) % 7 = ((2 * (n % 7)) + 1) % 7,
  by { rw nat.mod_mod, exact nat.mod_add_mod 2 7 1, },
  have h₂ : (2 * (n % 7)) % 7 = 6,
  by { rw mul_mod, exact nat.mod_add_mod 2 7 1, },
  have h₃ : (2 * (n % 7) + 1) % 7 = 6 + 1,
  by { rw add_mod, exact nat.mod_add_mod 7 7 1, },
  rw h₁,
  rw h₂,
  rw h₃,
  exact nat.mod_eq_of_lt (by { apply lt_of_le_of_lt, exact nat.mod_le_of_lt (7 * n + 6) 7 },)

end

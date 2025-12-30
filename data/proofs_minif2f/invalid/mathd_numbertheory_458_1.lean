import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_458
  (n : ℕ)
  (h₀ : n % 8 = 7) :
  n % 4 = 3 :=
begin

  have h₁ := nat.mod_eq_of_lt (lt_of_le_of_lt (le_of_eq h₀) (nat.lt_of_mod_eq 8 7)),
  exact h₁,

end

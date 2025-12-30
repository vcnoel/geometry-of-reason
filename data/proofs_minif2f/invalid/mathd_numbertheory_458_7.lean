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

  have h₁ : n = 8 * (n / 8) + 7,
  { exact nat.mod_eq_of_div h₀ },
  have h₂ : n % 4 = 7 % 4,
  { rw h₁ },
  have h₃ : 7 % 4 = 3,
  { exact mod_by_prime_power _ _ _ 4 },
  exact h₂.trans h₃

end

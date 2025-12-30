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

  have h₁ : (5 * n) % 17 = 5 * (n % 17),
  { apply Nat.mod_mul_left },
  have h₂ : 5 * (n % 17) = 8,
  { apply h₀ },
  have h₃ : n % 17 = 8 / 5,
  { apply Nat.div_eq_iff_mod_eq },
  have h₄ : 8 / 5 = 5,
  { apply Nat.div_eq_of_eq_mul (by norm_num) (by norm_num) },
  have h₅ : n % 17 = 5,
  { apply h₃ },
  exact h₅,

end

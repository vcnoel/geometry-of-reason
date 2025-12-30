import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_335
  (n : ℕ)
  (h₀ : n % 7 = 5) :
  (5 * n) % 7 = 4 :=
begin

  have h₁ : 5 % 7 = 5,
  { rw nat.mod_eq_of_lt (lt_of_le_of_lt (nat.le_of_mod_eq h₀) (nat.lt_succ_self 5)), },
  have h₂ : (5 * n) % 7 = (5 * n) % 7,
  { refl, },
  have h₃ : (5 * n) % 7 = (5 % 7) * n % 7,
  { have h₃₁ : 5 % 7 = 5,
    { rw nat.mod_eq_of_lt (lt_of_le_of_lt (nat.le_of_mod_eq h₀) (nat.lt_succ_self 5)), },
    have h₃₂ : (5 * n) % 7 = (5 % 7) * n % 7,
    { rw h₃₁ },
    exact h₃₂ },
  have h₄ : (5 % 7) * n % 7 = 5 * n % 7,
  { have h₄₁ : 5 % 7 = 5,
    { rw nat.mod_eq_of_lt (lt_of_le_of_lt (nat.le_of_mod_eq h₀) (nat
end

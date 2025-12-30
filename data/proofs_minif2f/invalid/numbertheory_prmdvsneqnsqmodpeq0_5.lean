import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_prmdvsneqnsqmodpeq0
  (n : ℤ)
  (p : ℕ)
  (h₀ : nat.prime p) :
  ↑p ∣ n ↔ (n^2) % p = 0 :=
begin

  split,
  { intro h₁,
    exact h₁ },
  { intro h₁,
    have h₂ : (n % p) * (n % p) % p = 0,
    { rw h₁,
      exact (zero_mul 0) },
    have h₃ : (n % p) % p = 0,
    { rw mul_comm,
      exact h₂ },
    have h₄ : (n % p) = 0,
    { exact (mod_eq_of_lt (h₃.trans (le_of_eq (zero_le 0)))) },
    exact (h₄.trans (mod_eq_of_lt (le_of_lt (lt_of_le_of_lt (zero_le n) (lt_add_one n))))).trans (eq_of_mod_eq_zero p) },

end

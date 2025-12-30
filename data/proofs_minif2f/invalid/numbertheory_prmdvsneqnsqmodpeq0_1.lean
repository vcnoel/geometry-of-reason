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
    rw [pow_two, mod_pow, if_pos h₁, mul_zero, zero_mod],
    exact (mod_eq_zero.mp h₁) },
  { intro h₁,
    rw [mod_pow, if_pos h₁, mul_zero, zero_mod],
    exact (mod_eq_zero.mpr h₁) }

end

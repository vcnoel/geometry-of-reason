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
  { intro h,
    rw h,
    exact nat.succ_pos p, },
  { intro h,
    have h₁ : n % p = 0,
    { rw h,
      exact nat.succ_pos p, },
    have h₂ : n % p = 0,
    { rw h,
      exact nat.succ_pos p, },
    have h₃ : p ∣ n,
    { rw h₁,
      exact nat.div_of_mod_eq p n, },
    exact h₃, },

end

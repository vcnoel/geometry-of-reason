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

  rw [← nat.cast_two_eq_two, ← nat.cast_one_eq_one],
  refine ⟨λ h, _, λ h, _⟩,

  { assume h,
    have h₁ : n % p = 0, from h,
    have h₂ : n = q * p, from eq_zero_of_mod_eq_zero h₁,
    have h₃ : n = q * p, from eq.symm h₂,
    exact (mod_eq_zero_iff_dvd n p).2 h₃ },

  { assume h,
    have h₁ : n % p = 0, from h,
    have h₂ : n = q * p, from eq_zero_of_mod_eq_zero h₁,
    have h₃ : n^2 % p = (q * p)^2 % p, from (pow_two n).mod_eq_pow_mod p,
    have h₄ : n^2 % p = 0, from h₃,
    exact (mod_eq_zero_iff_dvd n^2 p).2 h₄ }

end

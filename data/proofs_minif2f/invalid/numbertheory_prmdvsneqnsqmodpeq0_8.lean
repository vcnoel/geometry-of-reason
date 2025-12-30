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
    have h₂ : (n^2) % p = 0,
    { have h₃ : p ∣ n^2 := (dvd_mul h₁ h₁),
      have h₄ : p ∣ n^2 % p := (dvd_mod h₃),
      exact (mod_eq_zero_of_dvd h₄).mp (nat.mod_lt (n^2) (by.assumption)).symm },
    exact h₂ },
  { intro h₂,
    have h₃ : (n^2) % p = 0,
    { exact h₂ },
    have h₄ : p ∣ n^2 := (mod_eq_zero_of_dvd h₃).mpr (nat.mod_lt (n^2) (by.assumption)).symm,
    have h₅ : p ∣ n := (dvd_mul h₄ h₄),
    exact h₅ }

end

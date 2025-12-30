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
    have h₁ := h,
    have h₂ := congr_arg (λ x : ℤ, x^2) h,
    have h₃ := (congr_arg2 pow2_mod h₂),
    have h₄ := (congr_arg (λ x : ℤ, x % p) h₃),
    exact (congr_arg_eq h₄) },
  { intro h,
    have h₁ := h,
    have h₂ := congr_arg (λ x : ℤ, x^2) h₁,
    have h₃ := (congr_arg2 pow2_mod h₂),
    have h₄ := (congr_arg (λ x : ℤ, x % p) h₃),
    have h₅ := (congr_arg_eq h₄),
    have h₆ := (congr_arg_mod h₅),
    exact (congr_arg_eq h₆) },

end

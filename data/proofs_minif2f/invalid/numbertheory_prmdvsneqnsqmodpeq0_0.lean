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
  { intros h₁,
    exact h₁ },
  { intro h₁,
    have h₂ : (n^2) % p = (n % p) * (n % p) % p,
    by {
      ring },
    have h₃ : (n % p) * (n % p) % p = 0,
    by {
      rw h₁,
      simp },
    have h₄ : (n % p) = 0,
    by {
      have h₅ : (n % p) % p = 0,
      by {
        rw h₃ },
      have h₆ : (n % p) % p = (n % p),
      by {
        have h₇ : (n % p) ≤ p,
        by {
          exact dec_trivial },
        have h₈ : (n % p) % p ≤ p % p,
        by {
          exact dec_trivial },
        have h₉ : p % p = 0,
        by {
          exact dec_trivial },
        exact le_antisymm h₅ h₆ },
      exact dec_trivial },
    have h₅ : n % p = 0,
   
end

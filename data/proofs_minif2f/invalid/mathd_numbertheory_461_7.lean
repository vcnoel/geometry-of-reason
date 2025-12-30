import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_461
  (n : ℕ)
  (h₀ : n = finset.card (finset.filter (λ x, gcd x 8 = 1) (finset.Icc 1 7))) :
  (3^n) % 8 = 1 :=
begin

  have h₁ : ∀ x : ℕ, x % 8 = 1 → (3^x) % 8 = 1,
  { intro x,
    induction x with x IHx,
    { have h₂ : (3^0) % 8 = 1, by simp,
      exact h₂ },
    { have h₂ : (3^(x + 1)) % 8 = (3 * (3^x)) % 8,
      by simp,
      have h₃ : (3 * (3^x)) % 8 = ((3^x) % 8 * 3) % 8,
      by simp,
      have h₄ : ((3^x) % 8 * 3) % 8 = 1 * 3 % 8,
      by simp,
      have h₅ : 1 * 3 % 8 = 3 % 8,
      by simp,
      have h₆ : 3 % 8 = 3,
      by simp,
      have h₇ : (3^x) % 8 = 1,
      by exact IHx,
      have h₈ : 1 * 3 = 
end

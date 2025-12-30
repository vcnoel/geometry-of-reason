import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1987_p6
  (p : ℕ)
  (f : ℕ → ℕ)
  (h₀ : ∀ x, f x = x^2 + x + p)
  (h₀ : ∀ k : ℕ, k ≤ nat.floor (real.sqrt (p / 3)) → nat.prime (f k)) :
  ∀ i ≤ p - 2, nat.prime (f i) :=
begin

  intros i h₁,
  have h₂ := h₀ _ _,
  cases h₂ with h₂ h₂,
  { exact h₂ },
  { exact h₂ },

end

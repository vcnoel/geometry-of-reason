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

  intro i,
  cases nat.lt_or_eq i (p - 2) with h₁ h₁,
  { apply h₀,
    intro k,
    have h₂ := h₁.trans (le_floor_add_one k),
    have h₃ := h₂.trans (le_div_self _ (real.sqrt (p / 3))),
    exact h₃ },
  { apply h₀,
    intro k,
    have h₂ := h₁.trans (le_floor_add_one k),
    have h₃ := h₂.trans (le_div_self _ (real.sqrt (p / 3))),
    exact h₃ }

end

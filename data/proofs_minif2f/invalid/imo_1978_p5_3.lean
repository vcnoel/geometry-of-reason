import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1978_p5
  (n : ℕ)
  (a : ℕ → ℕ)
  (h₀ : ∀ (m : ℕ), 0 < a m)
  (h₁ : ∀ (p q : ℕ), p ≠ q → a p ≠ a q)
  (h₂ : 0 < n) :
  (∑ k in finset.Icc 1 n, (1 : ℝ)/k) ≤ ∑ k in finset.Icc 1 n, (a k)/k^2 :=
begin

  have h₃ : ∀ (m : ℕ), m < n → a m < a (m + 1),
  { intro m,
    cases m,
    { simp at h₁,
      exact h₁ 0 1 h₂ },
    { have h₄ : a m ≠ a (m + 1),
      { intro h₅,
        have h₆ : m = m + 1,
        { rw [h₅] },
        exact h₆.resolve_left h₂ },
      exact h₁ m (m + 1) h₄ } },
  have h₅ : ∀ (m : ℕ), m < n → ∑ k in finset.Icc m (m + 1), (1 : ℝ)/k < ∑ k in finset.Icc m (m + 1), (a k)/k^2,
  { intros m h₆,
    have h₇ : (a m) / (m + 1)^2 < (a (m + 1)) / (m + 1)^2,
    { have h₈ : a m < a (m + 1),
      { exact h₃ m h₆ },

end

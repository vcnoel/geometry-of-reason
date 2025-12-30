import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p8
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x ≠ y)
  (h₃ : x + 2 / x = y + 2 / y) :
  x * y = 2 :=
begin

  have h₄ : x ≠ 0 ∨ y ≠ 0,
    by
    { cases h₂ with h₂₁ h₂₂,
      { exact h₁ },
      { exact h₀ } },
  have h₅ : x ≠ y ∨ x ≠ 0 ∨ y ≠ 0,
    by
    { cases h₂ with h₂₁ h₂₂,
      { exact or.inl h₂ },
      { exact or.inr (or.inl h₀) (or.inr h₁) } },
  have h₆ : x ≠ y ∨ x ≠ 0 ∨ y ≠ 0,
    by
    { cases h₅ with h₅₁ h₅₂,
      { exact h₅ },
      { cases h₅₂ with h₅₂₁ h₅₂₂,
        { exact or.inr (or.inl h₀) h₅₂₂ },
        { exact or.inr h₅₂₂ (or.inr h₁) } } },
  have h₇ : x ≠ y ∨ x ≠ 0 ∨ y ≠ 0,
    by
    { cases h₆ with h₆₁ h₆₂,

end

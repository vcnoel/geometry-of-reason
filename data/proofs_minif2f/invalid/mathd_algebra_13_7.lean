import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_13
  (a b : ℝ)
  (h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 :=
begin

  by_cases h₁ : a = 0 ∨ b = 0,
  { by_cases h₂ : a = 0, by_cases h₃ : b = 0,
    { have h₄ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 0 = a / (x - 3) + b / (x - 5),
      by { intro x, apply h₀, intros h₅ h₆, exact (h₇ x h₅ h₆).elim },
      by_cases h₇ : x - 3 = 0 ∨ x - 5 = 0,
      { have h₈ : x - 3 = 0,
        by { apply h₇, apply or.inl },
        have h₉ : x - 5 ≠ 0,
        by { apply h₇, apply or.inr },
        have h₁₀ : a = 0,
        by { apply h₂, exact h₈ },
        have h₁₁ : b / (x - 5) = 0,
        by { apply div_zero, exact h₉ },
        have h₁₂ :
end

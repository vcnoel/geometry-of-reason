import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin

  have h₂ : a ≠ 1 ∧ b ≠ -2,
  { by_contra h₃,
    by_contra h₄,
    have h₅ : a ≠ 1,
    { intro h₆,
      have h₇ : a = 1,
      { rw h₆ },
      exact h₇ },
    have h₈ : b = -2,
    { intro h₉,
      have h₁₀ : b = -2,
      { rw h₉ },
      exact h₁₀ },
    exact h₄ h₈ h₃ h₅ },
  by_contra h₅,
  have h₆ : a = 1,
  { intro h₇,
    have h₈ : a = 1,
    { rw h₇ },
    exact h₈ },
  have h₉ : b ≠ -2,
  { intro h₁₀,
    have h₁₁ : b = -2,
    { rw h₁₀ },
    exact h₁₁ },
  have h₁₂ : a ≠ 1,
  { intro h₁₃,
    have h₁₄ : a = 1,
    { rw h₁
end

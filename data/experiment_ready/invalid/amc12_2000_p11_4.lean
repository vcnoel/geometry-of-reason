import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ : a * b ≠ 0 := by
    cases h₀ with h₀₁ h₀₂,
    cases h₀₁,
    cases h₀₂,
  have h₃ : (a * b)^2 = (a - b)^2 := by
    rw [h₁, h₁, h₁, h₁, h₁],
  have h₄ : (a^2 - 2*a*b + b^2) = (a^2 - 2*a*b + b^2) := by
    refl,
  have h₅ : a^2 - 2*a*b + b^2 = (a - b)^2 := by
    refl,
  have h₆ : (a - b)^2 = a^2 - 2*a*b + b^2 := by
    refl,
  have h₇ : a^2 - 2*a*b + b^2 ≠ 0 := by
    cases h₀ with h₀₁ h₀₂,
    cases h₀₁,
    cases h₀₂,
  have h₈ : (a - b)^2 ≠ 0 := by
    cases h₀ with h₀₁ h₀
end

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
  have h₂ := h₁ a,
  have h₃ := h₁ b,
  have h₄ := h₁ 0,
  simp at *,
  have h₅ : b * (1 - a) = 0, linarith,
  simp at h₅,
  cases h₅ with h₅ h₆,
  exfalso,
  exact absurd h₅ h₀.2,
  have h₆ : a = 1, linarith,
  split,
  exact h₆,
  rw h₆ at h₂,
  linarith,
end
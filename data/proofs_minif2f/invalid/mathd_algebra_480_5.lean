import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_480
  (f : ℝ → ℝ)
  (h₀ : ∀ x < 0, f x = -(x^2) - 1)
  (h₁ : ∀ x, 0 ≤ x ∧ x < 4 → f x = 2)
  (h₂ : ∀ x ≥ 4, f x = real.sqrt x) :
  f π = 2 :=
begin

  have h₁₀ : 0 ≤ π ∧ π < 4,
  { have h₁₁ : 0 ≤ π,
    { exact le_pi_half },
    have h₁₂ : π < 4,
    { exact lt_of_le_pi_half },
    exact and.intro h₁₁ h₁₂ },
  have h₁₃ : f π = 2,
  { exact h₁ (π) h₁₀ },
  exact h₁₃,

end

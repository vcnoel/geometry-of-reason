import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  have h₃ : a ≠ b + 2 * b := by { rw h₁, exact h₀ },
  have h₄ : a ≠ 2 * (b + b) := by { rw h₁, exact h₀ },
  have h₅ : a ≠ 2 * (2 * b) := by { rw h₁, exact h₀ },
  have h₆ : a ≠ 2 * b + 2 * b := by { rw h₁, exact h₀ },
  have h₇ : a ≠ 2 * (b + 2 * b) := by { rw h₁, exact h₀ },
  have h₈ : a ≠ 2 * (2 * b + b) := by { rw h₁, exact h₀ },
  have h₉ : a ≠ 2 * (2 * b + 2 * b) := by { rw h₁, exact h₀ },
  have h₁₀ : a ≠ 2 * (2 * b + b) := by { rw h₁, exact h₀ },
  have h₁₁ : a ≠ 2 * (b + 2 * b) := by { rw h₁, exact h₀ },

end

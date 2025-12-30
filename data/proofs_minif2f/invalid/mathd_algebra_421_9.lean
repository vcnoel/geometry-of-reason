import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_421
  (a b c d : ℝ)
  (h₀ : b = a^2 + 4 * a + 6)
  (h₁ : b = 1 / 2 * a^2 + a + 6)
  (h₂ : d = c^2 + 4 * c + 6)
  (h₃ : d = 1 / 2 * c^2 + c + 6)
  (h₄ : a ≤ c) :
  c - a = 6 :=
begin

  have h₅ : a^2 + 4 * a + 6 = c^2 + 4 * c + 6 := by {rw [h₀, h₂]},
  have h₆ : a^2 + 4 * a + 6 = 1 / 2 * a^2 + a + 6 := by {rw [h₀, h₁]},
  have h₇ : c^2 + 4 * c + 6 = 1 / 2 * c^2 + c + 6 := by {rw [h₂, h₃]},
  have h₈ : a^2 - 1 / 2 * a^2 = c^2 - 1 / 2 * c^2 := by {rw [h₅, h₇]},
  have h₉ : a^2 - 1 / 2 * a^2 = 4 * c - 4 * a := by {rw [h₆, h₃]},
  have h₁₀ : c^2 - 1 / 2 * c^2 = 4 * a - 4 * c := by {rw [h₇, h₁]},
  have
end

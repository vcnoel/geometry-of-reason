import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  have h₁ : 125 = 5 * 5 * 5 := by ring,
  have h₂ : 8 = 2 * 2 * 2 := by ring,
  have h₃ : 125 / 8 = (5 * 5 * 5) / (2 * 2 * 2) := by rw [h₁, h₂],
  have h₄ : 125 / 8 = (5 * 5) / (2 * 2) := by cancel_rfl,
  have h₅ : 125 / 8 = 25 / 4 := by cancel_rfl,
  have h₆ : 25 / 4 = 5 / 2 * 5 := by ring,
  have h₇ : 5 / 2 * 5 = 25 / 4 := by cancel_rfl,
  have h₈ : 125 / 8 = 25 / 4 := by cancel_rfl,
  have h₉ : 25 / 4 = 5 / 2 * 5 := by ring,
  have h₁₀ : 5 / 2 * 5 = 25 / 4 := by cancel_rfl
end

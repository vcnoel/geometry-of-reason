import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1961_p1
  (x y z a b : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : x ≠ y)
  (h₂ : y ≠ z)
  (h₃ : z ≠ x)
  (h₄ : x + y + z = a)
  (h₅ : x^2 + y^2 + z^2 = b^2)
  (h₆ : x * y = z^2) :
  0 < a ∧ b^2 < a^2 ∧ a^2 < 3 * b^2 :=
begin

  have h₇ : x ≠ z := by linarith [h₃],
  have h₈ : y ≠ z := by linarith [h₂],
  have h₉ : x ≠ y := by linarith [h₁],
  have h₁₀ : x ≠ 0 := by linarith [h₀.left],
  have h₁₁ : y ≠ 0 := by linarith [h₀.right],
  have h₁₂ : z ≠ 0 := by linarith [h₀.left],
  have h₁₃ : a ≠ 0 := by linarith [h₄],
  have h₁₄ : b ≠ 0 := by linarith [h₅],
  have h₁₅ : x ≠ 0 ∨ y ≠ 0 ∨ z ≠ 0 := by linarith,
  have h₁₆ : x + y ≠ 0 ∨ z ≠ 0 := by linarith [h₇, h₈],
  have h₁₇ : x + y ≠ 0 ∨ x ≠ 0 ∨ y ≠ 0 := by linarith,
  have h₁₈ : (x + y)^2 + z^2 = b^2 := by lin
end

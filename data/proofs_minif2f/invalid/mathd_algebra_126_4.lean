import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_126
  (x y : ℝ)
  (h₀ : 2 * 3 = x - 9)
  (h₁ : 2 * (-5) = y + 1) :
  x = 15 ∧ y = -11 :=
begin

  have h₂ := h₀.add h₁,
  have h₃ := h₂.add (0 : ℝ),
  have h₄ := (h₃.add 9).add (h₃.add 1).neg,
  have h₅ := h₄.add 1,
  have h₆ := h₅.add 3,
  have h₇ := h₆.add 3,
  have h₈ := h₇.add 3,
  have h₉ := h₈.add 3,
  have h₁₀ := h₉.add 3,
  have h₁₁ := h₁₀.add 3,
  have h₁₂ := h₁₁.add 3,
  have h₁₃ := h₁₂.add 3,
  have h₁₄ := h₁₃.add 3,
  have h₁₅ := h₁₄.add 3,
  have h₁₆ := h₁₅.add 3,
  have h₁₇ := h₁₆.add 3,
  have h₁₈ := h₁₇.add 3,
  have h₁₉ := h₁₈.add 3,
  have h
end

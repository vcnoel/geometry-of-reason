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

  have h₇ := h₅.subst h₆,
  have h₈ := h₇.subst h₄,
  have h₉ := h₈.subst h₅,
  have h₁₀ := h₉.subst h₆,
  have h₁₁ := h₁₀.subst h₄,
  have h₁₂ := h₁₁.subst h₅,
  have h₁₃ := h₁₂.subst h₆,
  have h₁₄ := h₁₃.subst h₄,
  have h₁₅ := h₁₄.subst h₅,
  have h₁₆ := h₁₅.subst h₆,
  have h₁₇ := h₁₆.subst h₄,
  have h₁₈ := h₁₇.subst h₅,
  have h₁₉ := h₁₈.subst h₆,
  have h₂₀ := h₁₉.subst h₄,
  have h₂₁ := h₂₀.subst h₅,
  have h₂₂ := h₂₁.subst h₆,
  have h₂
end

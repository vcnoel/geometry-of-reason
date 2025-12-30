import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_109
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 12)
  (h₁ : a = 4) :
  b = 0 :=
begin

  have h₂ := h₀.subst h₁,
  have h₃ := h₂.subst h₁,
  have h₄ := h₃.subst h₁,
  have h₅ := h₄.subst h₁,
  have h₆ := h₅.subst h₁,
  have h₇ := h₆.subst h₁,
  have h₈ := h₇.subst h₁,
  have h₉ := h₈.subst h₁,
  have h₁₀ := h₉.subst h₁,
  have h₁₁ := h₁₀.subst h₁,
  have h₁₂ := h₁₁.subst h₁,
  have h₁₃ := h₁₂.subst h₁,
  have h₁₄ := h₁₃.subst h₁,
  have h₁₅ := h₁₄.subst h₁,
  have h₁₆ := h₁₅.subst h₁,
  have h₁₇ := h₁₆.subst h₁,
  have h₁₈ := h₁₇.subst h₁,
  have h₁₉ := h₁₈.subst h
end

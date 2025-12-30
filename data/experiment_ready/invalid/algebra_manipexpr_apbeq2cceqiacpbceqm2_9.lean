import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_manipexpr_apbeq2cceqiacpbceqm2
  (a b c : ℂ)
  (h₀ : a + b = 2 * c)
  (h₁ : c = complex.I) :
  a * c + b * c = -2 :=
begin

  have h₂ := complex.I * c,
  have h₃ := c * complex.I,
  have h₄ := h₂ + h₃,
  have h₅ := complex.I * c + c * complex.I,
  have h₆ := -2 * c,
  have h₇ := -2 * c + 2 * c,
  have h₈ := h₆ + h₇,
  have h₉ := h₅ = h₈,
  have h₁₀ := h₉.simp,
  have h₁₁ := h₁₀.simp,
  have h₁₂ := h₁₁.simp,
  have h₁₃ := h₁₂.simp,
  have h₁₄ := h₁₃.simp,
  have h₁₅ := h₁₄.simp,
  have h₁₆ := h₁₅.simp,
  have h₁₇ := h₁₆.simp,
  have h₁₈ := h₁₇.simp,
  have h₁₉ := h₁₈.simp,
  have h₂₀ := h₁₉.simp,
  have h₂₁ := h₂₀
end

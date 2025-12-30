import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  have h₂ := h₁ - 3 * h₀,
  have h₃ := h₂ / 2,
  have h₄ := h₃ / x,
  have h₅ := h₄ * (x + y),
  have h₆ := h₅ / (x + y),
  have h₇ := h₆ - x,
  have h₈ := h₇ * (x + y),
  have h₉ := h₈ / (x + y),
  have h₁₀ := h₉ * x,
  have h₁₁ := h₁₀ + y,
  have h₁₂ := h₁₁ - 7,
  have h₁₃ := h₁₂ * (x + y),
  have h₁₄ := h₁₃ / (x + y),
  have h₁₅ := h₁₄ * x,
  have h₁₆ := h₁₅ + y,
  have h₁₇ := h₁₆ - 7,
  have h₁₈ := h₁₇ * (x + y),
  have h₁₉ := h₁₈ / (x + y),
  have h
end

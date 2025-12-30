import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_326
  (n : ℕ)
  (h₀ : (↑n - 1) * ↑n * (↑n + 1) = (720 : ℤ)) :
  (n + 1) = 10 :=
begin

  have h₁ := h₀,
  have h₂ := factorTheorem (n + 1) (720),
  have h₃ := h₂ 8 5,
  have h₄ := h₃.2,
  have h₅ := h₄.2,
  have h₆ := h₅.1,
  have h₇ := h₆.1,
  have h₈ := h₇.1,
  have h₉ := h₈.1,
  have h₁₀ := h₉.2,
  have h₁₁ := h₁₀.2,
  have h₁₂ := h₁₁.2,
  have h₁₃ := h₁₂.2,
  have h₁₄ := h₁₃.2,
  have h₁₅ := h₁₄.2,
  have h₁₆ := h₁₅.2,
  have h₁₇ := h₁₆.2,
  have h₁₈ := h₁₇.2,
  have h₁₉ := h₁₈.2,
  have h₂₀ := h₁₉.2,
  have h₂
end

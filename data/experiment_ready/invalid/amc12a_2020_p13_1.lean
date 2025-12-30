import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2020_p13
  (a b c : ℕ)
  (n : nnreal)
  (h₀ : n ≠ 1)
  (h₁ : 1 < a ∧ 1 < b ∧ 1 < c)
  (h₂ : (n * ((n * (n^(1 / c)))^(1 / b)))^(1 / a) = (n^25)^(1 / 36)) :
  b = 3 :=
begin

  have h₃ := h₂,
  have h₄ := pow_eq_pow_one_iff.2 (h₃),
  have h₅ := pow_eq_pow_one_iff.1 (h₄),
  have h₆ := h₅,
  have h₇ := h₆,
  have h₈ := h₇,
  have h₉ := h₈,
  have h₁₀ := h₉,
  have h₁₁ := h₁₀,
  have h₁₂ := h₁₁,
  have h₁₃ := h₁₂,
  have h₁₄ := h₁₃,
  have h₁₅ := h₁₄,
  have h₁₆ := h₁₅,
  have h₁₇ := h₁₆,
  have h₁₈ := h₁₇,
  have h₁₉ := h₁₈,
  have h₂₀ := h₁₉,
  have h₂₁ := h₂₀,
  have h₂₂ := h₂₁,
  have h₂₃ := h₂₂,
  have h₂₄ := h₂₃,
  have h₂₅ := h₂�
end

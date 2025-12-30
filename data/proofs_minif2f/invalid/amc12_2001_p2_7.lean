import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p2
  (a b n : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9)
  (h₁ : 0 ≤ b ∧ b ≤ 9)
  (h₂ : n = 10 * a + b)
  (h₃ : n = a * b + a + b) :
  b = 9 :=
begin

  have h₄ := congr_arg (λ x, x * b) h₃,
  have h₅ := congr_arg (λ x, x + b) h₄,
  have h₆ := congr_arg (λ x, x - a) h₅,
  have h₇ := h₆.trans (congr_arg (λ x, x * 10) h₂),
  have h₈ := congr_arg (λ x, x * 10) h₇,
  have h₉ := congr_arg (λ x, x * 10 + b) h₈,
  have h₁₀ := congr_arg (λ x, x * 10 + a + b) h₉,
  have h₁₁ := congr_arg (λ x, x * 10 + 2 * a + b) h₁₀,
  have h₁₂ := congr_arg (λ x, x * 10 + 3 * a + 2 * b) h₁₁,
  have h₁₃ := congr_arg (λ x, x * 10 + 4 * a + 3 * b) h₁₂,
  have h₁₄ := congr_arg (λ x
end

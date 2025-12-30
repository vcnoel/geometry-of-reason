import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1973_p3
  (a b : ℝ)
  (h₀ : ∃ x, x^4 + a * x^3 + b * x^2 + a * x + 1 = 0) :
  4 / 5 ≤ a^2 + b^2 :=
begin

  obtain ⟨x, h⟩ := h₀,
  have h₀' : x^4 + a * x^3 + b * x^2 + a * x + 1 = 0,
    by assumption,
  have h₁ : (x^4 + a * x^3 + b * x^2 + a * x + 1) * (x^4 + a * x^3 + b * x^2 + a * x + 1) = 0,
    by {rw [h₀'], exact mul_self 0},
  have h₂ : x^8 + 2 * a * x^7 + (a^2 + 2 * b) * x^6 + (2 * a^2 * x + 2 * a * b) * x^5 + 
    (a^2 * b + a^4 + 2 * b^2) * x^4 + (a^3 * b + a^2 * b + a^4 + 2 * a * b^2) * x^3 + 
    (a^2 * b^2 + a^4 * b + a^3 * b + a^2 *
end

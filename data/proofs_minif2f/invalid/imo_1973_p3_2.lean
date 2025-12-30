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

  rcases h₀ with ⟨x, h⟩,
  by_cases h₁ : x ≠ 0,

  { obtain ⟨x, h₂⟩ := h₁,

    have h₃ : (x^4 + a * x^3 + b * x^2 + a * x + 1) * (x^4 + a * x^3 + b * x^2 + a * x + 1) =
        (x^8 + a * x^7 + b * x^6 + a * x^5 + x^4) +
        (a * x^7 + a^2 * x^6 + b * a * x^5 + a^2 * x^4 + a * x^3) +
        (b * x^6 + b * a * x^5 + b^2 * x^4 + b * a * x^3 + b^2 * x^2) +
        (a * x^5 + a^2 * x^4 + a * b * x^3 + a^2 * x^2 + a * x) +
        (x^4 + a * x^3 + b * x^2 + a
end

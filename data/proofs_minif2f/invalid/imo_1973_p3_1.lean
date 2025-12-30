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

  rcases h₀ with ⟨x, hx⟩,
  have hx' : x ≠ 0,
  { intro h,
    have h' : x^4 + a * x^3 + b * x^2 + a * x + 1 = 0,
    { rw h },
    have h'' : (x^4 + a * x^3 + b * x^2 + a * x + 1) * x ≠ 0,
    { rw mul_ne_zero },
    have h''' : x^5 + a * x^4 + b * x^3 + a * x^2 + x = 0,
    { rw mul_eq_zero.mpr h'' },
    have h'''' : x^5 + a * x^4 + b * x^3 + a * x^2 + x ≠ 0,
    { contradiction },
    contradiction },
  have h₁ : x^4 + a * x^3 + b * x^2 + a * x + 1 = 0,
  { rw hx },
  have h₂ : x^8 + a^2 * x^6 + b^2 * x^4 + a^2 * x^2 +
end

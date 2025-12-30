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

  by_cases h : a = 0,
  { cases h₀ with x hx,
    have h₁ : x^2 + 1 ≠ 0,
    { intro h,
      have h₂ : x^8 + 1 = 0,
      { rw h,
        exact hx },
      have h₃ : x^16 + 1 = 0,
      { rw h₂,
        exact pow_zero x 8 },
      have h₄ : x^32 + 1 = 0,
      { rw h₃,
        exact pow_zero x 8 },
      have h₅ : x^64 + 1 = 0,
      { rw h₄,
        exact pow_zero x 8 },
      have h₆ : x^128 + 1 = 0,
      { rw h₅,
        exact pow_zero x 8 },
      have h₇ : x^256 + 1 = 0,
      { rw h₆,
        exact pow_zero x 8 },
      have h₈ : x^512 + 1 = 0,
      { rw h₇,
        exact pow_zero x 8 },
      have h₉ : x^1024
end

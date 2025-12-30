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

  by_cases h₁ : a = 0,
  { have h₂ : b ≠ 0,
    { contrapose! h₁,
      exact h₁ },
    have h₃ : (1 / b)^2 + 1 = (b^2 + 1) / (b^2),
    { ring },
    have h₄ : 0 < (1 / b)^2 + 1,
    { rw h₃,
      exact add_pos (pow_pos h₂ 2) (pow_pos h₂ 2) },
    have h₅ : (1 / b)^4 + a * (1 / b)^3 + b * (1 / b)^2 + a * (1 / b) + 1 = 0,
    { rw h₃,
      exact h₀ },
    have h₆ : (1 / b)^4 + a * (1 / b)^3 + b * (1 / b)^2 + a * (1 / b) + 1 = 0,
    { exact h₅ },
    have h₇ : (1 / b)^2 + a * (1 / b) + b + a = 0,
    { ring },
   
end

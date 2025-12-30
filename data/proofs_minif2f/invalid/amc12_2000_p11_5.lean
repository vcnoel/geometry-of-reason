import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ : a * b = a - b,
  from h₁,

  have h₃ : a * b ≠ 0,
  from mt (λ x y, ne_of_eq x y) h₂,

  have h₄ : (a * b) / (a * b) = 1,
  from div_self h₃,

  have h₅ : (a * b) * (a / (a * b) + b / (a * b)) = (a * b) * ((a + b) / (a * b)),
  from mul_assoc ((a * b) * (a / (a * b) + b / (a * b))),

  have h₆ : (a * b) * (a / (a * b) + b / (a * b)) = a + b,
  from cancel_right h₅ h₄,

  have h₇ : a / b + b / a = (a + b) / (a * b),
  from eq_of_mul_eq h₆,

  have h₈ : a / b + b / a = (a + b) / (a * b) + a * b
end

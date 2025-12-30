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
  from h₀.imp (λ h₁, h₁.neq rfl) h₂,

  have h₄ : a ≠ b,
  from mt (λ h₁, h₁.neq rfl) (λ h₁, h₁.not_le h₀.1.not_lt),

  have h₅ : a / b + b / a - a * b = 2,
  from 
end

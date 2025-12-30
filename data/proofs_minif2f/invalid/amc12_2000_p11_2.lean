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

  have h₂ : a ≠ b,
  from (mt (λ h, h₀.1) h₁).elim,
  have h₃ : a * b ≠ 1,
  from (mt (λ h, h₀.2) h₁).elim,
  have h₄ : a * a ≠ 1,
  from (mt (λ h, h₀.1) h₁).elim,
  have h₅ : a ≠ 1,
  from (mt (λ h, h₀.1) h₁).elim,
  have h₆ : a ≠ -1,
  from (mt (λ h, h₀.1) h₁).elim,
  have h₇ : b ≠ 1,
  from (mt (λ h, h₀.2) h₁).elim,
  have h₈ : b ≠ -1,
  from (mt (λ h, h₀.2) h₁).elim,
  have h₉ : a * a ≠ b * b,
  from (mt (λ h, h₀.1) h₁).elim,
  have h₁₀ : a ≠ b * b / a,
  from (mt (λ
end

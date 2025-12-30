import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p25
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : 0 < b)
  (h₁ : ∀ x, f x = real.sqrt (a * x^2 + b * x))
  (h₂ : {x | 0 ≤ f x} = f '' {x | 0 ≤ f x}) :
  a = 0 ∨ a = -4 :=
begin

  have h₃ : ∀ x, 0 ≤ f x,
  { intro x,
    calc
      0 ≤ a * x^2 + b * x : (real.sqrt_nonneg (a * x^2 + b * x)).le
     ... ≤ b * x : (le_trans (le_of_real_mul_nonneg (real.sqrt_nonneg (a * x^2 + b * x))) (mul_le_mul_of_nonneg_right h₀ (real.sqrt_nonneg (a * x^2 + b * x))))
     ... ≤ 0 ∨ 0 ≤ b * x : (le_or_lt 0 (b * x))
     ... = 0 ∨ 0 ≤ b * x : (or.symm (lt_or_eq_of_le (le_mul _ _)))
     ... = 0 ∨ 0 ≤ b * x : (or.symm (lt_or_eq_of_le (le_mul _ _)))
     ... = 0 ∨ 0 ≤ b * x : (or.symm (lt_or_eq_of_le (le_mul _ _)))
     ... = 0 ∨ 0 ≤ b * x : (or.symm (lt_or_eq_of_le (le_mul _ _)))
     ... =
end

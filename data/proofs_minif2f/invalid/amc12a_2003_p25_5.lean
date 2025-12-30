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

  have h₃ : {x | 0 ≤ f x} = {x | 0 ≤ real.sqrt (a * x^2 + b * x)},
  {rw h₂, rw h₁},
  have h₄ : ∀ x, 0 ≤ f x ↔ 0 ≤ real.sqrt (a * x^2 + b * x),
  {intro x, split,
    { intro h, exact real.sqrt_nonneg (a * x^2 + b * x) },
    { intro h, exact real.sqrt_nonneg (a * x^2 + b * x) } },
  have h₅ : ∀ x, 0 ≤ a * x^2 + b * x,
  {intro x,
    rw h₄,
    exact real.sqrt_nonneg (a * x^2 + b * x) },
  have h₆ : ∀ x, 0 ≤ a * x^2,
  {intro x,
    have h₇ : 0 ≤ b * x,
    {rw h₅, exact real.sqrt_nonneg (a * x^2 + b * x) },
    exact real.mul_nonneg (real.sqrt_nonneg (a * x^2))
end

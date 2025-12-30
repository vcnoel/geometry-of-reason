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

  by_cases a = 0,
  { exact or.inl h,
    apply and.intro,
    { apply h₁,
      rw [h₁, h₁],
      exact real.sqrt (real.sqrt (a * x^2 + b * x))^2 = real.sqrt (a * x^2 + b * x),
      rw [← real.sqrt_pow, real.sqrt_pow],
      exact a * x^2 + b * x = a * x^2 + b * x,
      exact real.sqrt (a * x^2 + b * x) ≥ 0,
      exact h₁ x,
      exact h₁ x },
    { exact real.sqrt (a * x^2 + b * x) = 0,
      exact real.sqrt (a * x^2 + b * x) = 0,
      exact real.sqrt (a * x^2 + b * x) = 0,
      exact a * x^2 + b * x = 0,
      exact a * x^2 + b * x = 0,
      exact 0 ≤ real.sqrt (a * x^2 + b * x) },
  { by_cases a < 0,
    { apply and.intro,

end

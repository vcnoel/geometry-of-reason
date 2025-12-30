import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_206
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 + a * x + b)
  (h₁ : 2 * a ≠ b)
  (h₂ : f (2 * a) = 0)
  (h₃ : f b = 0) :
  a + b = -1 :=
begin

  have h₄ : f (2 * a) = (2 * a)^2 + a * (2 * a) + b,
  { apply h₀ },
  have h₅ : (2 * a)^2 + a * (2 * a) + b = 0,
  { apply h₂ },
  have h₆ : 4 * a^2 + 2 * a^2 + b = 0,
  { apply h₅ },
  have h₇ : 6 * a^2 + b = 0,
  { apply h₆ },
  have h₈ : b = -6 * a^2,
  { apply h₇ },
  have h₉ : a^2 = -(1/6) * b,
  { apply h₈ },
  have h₁₀ : a = -√((1/6) * b),
  { apply h₉ },
  have h₁₁ : f (-(1/6) * b) = (-(1/6) * b)^2 + a * (-(1/6) * b) + b,
  { apply h₀ },
  have h₁₂ : (-(1/6
end

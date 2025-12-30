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

  have h₄ : f (-1) = 0,
  { rw [h₀, -1^2, -1*a, -1*b] },
  have h₅ : a ≠ b,
  { intro h,
    have h₆ : f (2 * a) = f (2 * b),
    { rw [h₀, h₀] },
    have h₇ : 2 * a ≠ 2 * b,
    { apply h₁ },
    have h₈ : a = b,
    { apply h₇ },
    contradiction },
  have h₉ : f (a + b) = 0,
  { rw [h₀, a^2, a*a, b*b, a*b + b*a] },
  have h₁₀ : a + b ≠ 0,
  { intro h,
    have h₁₁ : f (a + b) = f 0,
    { rw [h₀, h₁₀] },
    have h₁₂ : 0 = 2 * a + b,
    { rw [h₁₀] },
    have h₁₃ : 2 * a = b,
    { apply h₁₂ },
    have
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_159
  (b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x^4 - 7 * x^3 + 2 * x^2 - b * x + 1)
  (h₁ : f 1 = 1) :
  b = -2 :=
begin

  have h₂ : ∀ x, f (1 + x) = 3 * (1 + x)^4 - 7 * (1 + x)^3 + 2 * (1 + x)^2 - b * (1 + x) + 1,
  {
    intro x,
    calc f (1 + x) = 3 * (1 + x)^4 - 7 * (1 + x)^3 + 2 * (1 + x)^2 - b * (1 + x) + 1
      : by { rw h₀ }
  },
  have h₃ : ∀ x, f (1 + x) = 3 * (1 + x)^4 - 7 * (1 + x)^3 + 2 * (1 + x)^2 - b * (1 + x) + 1,
  {
    intro x,
    calc f (1 + x) = 3 * (1 + x)^4 - 7 * (1 + x)^3 + 2 * (1 + x)^2 - b * (1 + x) + 1
      : by { rw h₀ }
  },
  have h₄ : ∀ x, f (1
end

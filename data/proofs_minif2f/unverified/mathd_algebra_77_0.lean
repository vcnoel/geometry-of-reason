import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_77
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, f x = x^2 + a * x + b)
  (h₂ : f a = 0)
  (h₃ : f b = 0) :
  a = 1 ∧ b = -2 :=
begin

  have h₄ : a ≠ 1 ∧ a ≠ -2,
  { rintro (rfl | rfl),
    { exact false.elim (h₀.left),
    { exact false.elim (h₀.right) },
  },
  have h₅ : b ≠ 1 ∧ b ≠ -2,
  { rintro (rfl | rfl),
    { exact false.elim (h₀.left),
    { exact false.elim (h₀.right) },
  },
  have h₆ : ∀ x, f x = x^2 + a * x + b,
  { rintro x,
    exact h₁ x },
  have h₇ : f a = a^2 + a * a + b,
  { rw h₆,
    exact rfl },
  have h₈ : f a = 0,
  { rw h₇,
    exact h₂ },
  have h₉ : a^2 + a * a + b = 0,
  { rw h₈,
    exact rfl },
  have h₁₀ : a^2 + a * a + b = (a^2 + a * a + 1) + b - 1,
  {
end

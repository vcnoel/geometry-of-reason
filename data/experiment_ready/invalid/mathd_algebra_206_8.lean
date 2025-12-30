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

  have h₄ : a^2 + a * b + b^2 = 0,
  from h₂.subst (h₀ (2 * a)),
  have h₅ : b ≠ 0,
  from h₁.not_eq,
  have h₆ : (a + b)^2 = a^2 + 2 * a * b + b^2,
  by simp,
  have h₇ : (a + b)^2 = 0,
  from h₆.eq.subst h₄,
  have h₈ : a + b = 0,
  from h₇.sqrt,
  have h₉ : a + b = -1,
  from h₈.not,
  exact h₉,

end

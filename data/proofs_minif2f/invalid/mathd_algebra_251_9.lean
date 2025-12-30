import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  have h₂ : 3 + 1/x = 7/x,
  from h₁,

  have h₃ : (3 + 1/x) * x = (7/x) * x,
  from mul_eq_mul_left x (h₂),

  have h₄ : 3*x + 1 = 7,
  from eq_subst h₃,

  have h₅ : 1 = 7 - 3*x,
  from eq_subst h₄,

  have h₆ : 1 = 7 - 3*x,
  from h₅,

  have h₇ : 1 = 7 - 3 * 2,
  from h₆,

  have h₈ : 1 = 1,
  from h₇,

  have h₉ : true = 7 - 3 * 2 = 1,
  from iff.intro (eq.refl _) h₈,

  have h₁₀ : true = 1,
  from h₉,

  have h₁₁ : true = 1,
  from h₁₀,

  have h₁₂ : 1 = 1,
  from h₁₁,

  have h₁
end

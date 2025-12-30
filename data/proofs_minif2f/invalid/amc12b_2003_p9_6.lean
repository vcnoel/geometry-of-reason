import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p9
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 6 - f 2 = 12) :
  f 12 - f 2 = 30 :=
begin

  have h₂ : f 6 - f 2 = 12,
  from h₁,

  have h₃ : f 12 - f 6 = 12,
  from h₁,

  have h₄ : f 12 - f 2 = (f 12 - f 6) + (f 6 - f 2),
  from add_sub_cancel ℝ _ _,

  have h₅ : f 12 - f 2 = 12 + 12,
  from h₃.add h₂,

  have h₆ : f 12 - f 2 = 24,
  from h₅,

  have h₇ : f 12 - f 2 = 30,
  from by_contradiction $ λ h₈, by_contradiction $ λ h₉,
    have h₁₀ : f 12 - f 2 = 24,
    from h₆,
    have h₁₁ : 24 ≠ 30,
    from ne.symm h₇,

    have h₁₂ : ¬(f 12 - f 2 = 30),
    from h₁₁,

    have h₁₃ : f 12 - f 2
end

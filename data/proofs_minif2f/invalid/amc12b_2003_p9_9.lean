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

  have h₂ : f 6 = a * 6 + b,
  from (h₀ 6).symm,

  have h₃ : f 2 = a * 2 + b,
  from (h₀ 2).symm,

  have h₄ : f 12 = a * 12 + b,
  from (h₀ 12).symm,

  have h₅ : f 12 - f 2 = a * (12 - 2) + (b - b),
  from (h₄.symm - h₃.symm).simp,

  have h₆ : f 12 - f 2 = 10 * a,
  from h₅,

  have h₇ : f 6 - f 2 = a * (6 - 2) + (b - b),
  from (h₂.symm - h₃.symm).simp,

  have h₈ : f 6 - f 2 = 4 * a,
  from h₇,

  have h₉ : 30 = 10 * a,
  from (h₈.trans h₆).symm,

  have h₁₀ : 30 =
end

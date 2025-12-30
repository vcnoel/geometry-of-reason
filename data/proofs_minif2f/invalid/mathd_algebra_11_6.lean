import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  have h₃ : (4 * a + 3 * b) / (a - 2 * b) = 5,
  from h₂,

  have h₄ : (4 * a + 3 * b) = 5 * (a - 2 * b),
  from h₃,

  have h₅ : (4 * a + 3 * b) = 5 * a - 10 * b,
  from h₄,

  have h₆ : 4 * a + 3 * b = 5 * a - 10 * b,
  from h₅,

  have h₇ : 4 * a - 5 * a = - 10 * b - 3 * b,
  from h₆,

  have h₈ : - a = - 13 * b,
  from h₇,

  have h₉ : a = 13 * b,
  from h₈,

  have h₁₀ : a = 13 * b,
  from h₉,

  have h₁₁ : a ≠ 13 * b,
  from h₀,

  have h₁₂ : a ≠ 13 * b,
  from
end

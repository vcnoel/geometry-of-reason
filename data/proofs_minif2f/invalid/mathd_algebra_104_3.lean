import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  have h₁ : 125 = x * 12 / 8,
  from h₀,

  have h₂ : 125 = x * 3 / 2,
  from h₁,

  have h₃ : 125 * 2 = 3 * x,
  from h₂,

  have h₄ : 250 = 3 * x,
  from h₃,

  have h₅ : 250 / 3 = x,
  from h₄,

  have h₆ : 250 / 3 * 2 / 2 = x * 2 / 2,
  from h₅,

  have h₇ : 250 / 3 * 1 = x * 1,
  from h₆,

  have h₈ : (250 / 3) * 1 = x * 1,
  from h₇,

  have h₉ : 250 / 3 = x,
  from h₈,

  have h₁₀ : 250 / 3 = 375 / 2,
  from h₉,

  have h₁₁ : 125 / 8 = 375 / 2,
  from h₁₀,

 
end

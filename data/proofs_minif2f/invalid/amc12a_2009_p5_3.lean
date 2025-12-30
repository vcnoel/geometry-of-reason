import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p5
  (x : ℝ)
  (h₀ : x^3 - (x + 1) * (x - 1) * x = 5) :
  x^3 = 125 :=
begin

  have h₁ : x^3 - (x^3 - x^2 - x + 1) = 5,
  from h₀,
  have h₂ : x^2 + x - 1 = 5,
  from h₁,

  have h₃ : x^2 + x = 6,
  from h₂,

  have h₄ : x^2 - 6x + 1 = 0,
  from h₃,

  have h₅ : (x - 3)^2 = 8,
  from h₄,

  have h₆ : x - 3 = ±√8,
  from h₅,

  have h₇ : x = 3 ± 2√2,
  from h₆,

  have h₈ : x^3 = (3 ± 2√2)^3,
  from h₇,

  have h₉ : x^3 = 125,
  from h₈,

  exact h₉,

end

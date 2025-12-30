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

  have h₁ : x^3 - x^4 + x^2 = 5,
  { rw h₀ },
  have h₂ : x^3 - x^4 + x^2 = x^2 * (x + 1) * (x - 1),
  { rw h₀ },
  have h₃ : x^3 - x^4 + x^2 = x^2 * (x^2 - 1),
  { rw h₂ },
  have h₄ : x^3 - x^4 + x^2 = (x^2 - 1) * x^2,
  { rw h₃ },
  have h₅ : x^3 - x^4 + x^2 = x^2 * x^2 - x^2,
  { rw h₄ },
  have h₆ : x^3 - x^4 + x^2 = x^4 - x^2,
  { rw h₅ },
  have h₇ : x^3 - x^4 + x^2 = - (x^4 - x^2),
  { rw h₆ },
  have h₈ : x^3 - x^4
end

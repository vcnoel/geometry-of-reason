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

  have h₁ := h₀,
  have h₂ : x^3 = (x + 1) * (x - 1) * x + 5,
  { rw h₁, },
  have h₃ : x^3 = x^3 - 5 + 5,
  { rw h₂, },
  have h₄ : x^3 - 5 = 120,
  { rw h₃, },
  have h₅ : x^3 = 125,
  { rw h₄, },
  exact h₅,

end

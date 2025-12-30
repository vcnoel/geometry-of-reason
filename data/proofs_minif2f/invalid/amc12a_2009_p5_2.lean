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

  have h₁ : x^3 - (x + 1) * (x - 1) * x = x^3 - (x^2 - 1) * x,
  by { ring },
  have h₂ : x^3 - (x^2 - 1) * x = x^3 - x^3 + x = x,
  by { ring },
  have h₃ : x^3 = 125,
  by { rw [h₀, h₁, h₂], exact eq.refl _ },
  exact h₃

end

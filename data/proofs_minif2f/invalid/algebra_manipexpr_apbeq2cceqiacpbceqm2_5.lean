import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_manipexpr_apbeq2cceqiacpbceqm2
  (a b c : ℂ)
  (h₀ : a + b = 2 * c)
  (h₁ : c = complex.I) :
  a * c + b * c = -2 :=
begin

  have h₂ : c * a + c * b = c * (a + b),
  by { rw [h₀, h₁, mul_zero] },
  have h₃ : c * (a + b) = -2 * c,
  by { rw [h₀, h₁, mul_two] },
  have h₄ : c * (a + b) = c * (a + b),
  by { rw [h₂, h₃] },
  have h₅ : a * c + b * c = c * a + c * b,
  by { rw [h₂] },
  have h₆ : a * c + b * c = -2 * c,
  by { rw [h₃] },
  have h₇ : a * c + b * c = -2,
  by { rw [h₄, h₅, h₆] },
  exact h₇

end

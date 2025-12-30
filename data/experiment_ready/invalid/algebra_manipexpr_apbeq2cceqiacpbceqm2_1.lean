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

  have h₂ : a + b = 2 * c := h₀,
  have h₃ : c = complex.I := h₁,
  have h₄ : 2 * c = 2 * complex.I := by { rw h₃ },
  have h₅ : a + b = 2 * complex.I := by { rw h₂ },
  have h₆ : a + b = 2 * complex.I := h₅,
  have h₇ : a * c + b * c = (a + b) * c := by { rw complex.mul_add },
  have h₈ : a * c + b * c = 2 * complex.I * complex.I := by { rw h₇, rw h₆ },
  have h₉ : a * c + b * c = -2 := by { rw complex.I_mul_I },
  exact h₉

end

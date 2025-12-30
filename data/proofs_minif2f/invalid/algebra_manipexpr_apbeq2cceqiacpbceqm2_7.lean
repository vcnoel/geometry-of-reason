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

  have h₂ : a + b = 2 * complex.I,
  from h₀,
  have h₃ : a * complex.I + b * complex.I = -2,
  from h₂,
  exact h₃

end

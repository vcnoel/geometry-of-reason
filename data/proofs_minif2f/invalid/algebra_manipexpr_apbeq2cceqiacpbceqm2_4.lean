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

  have h₂ : 2 * c = complex.I + complex.I, from
    complex.I + complex.I = 2 * complex.I,
  have h₃ : 2 * c = complex.I + complex.I, from
    h₂,
  have h₄ : 2 * c = complex.I + complex.I, from
    h₃,
  have h₅ : 2 * c = 2 * complex.I, from
    h₄,
  have h₆ : 2 * c = 2 * complex.I, from
    h₅,
  have h₇ : a + b = complex.I + complex.I, from
    h₀,
  have h₈ : a + b = complex.I + complex.I, from
    h₇,
  have h₉ : a + b = complex.I + complex.I, from
    h₈,
  have h₁₀ : a + b = 2 * complex.I, from
    h₉,
  have h₁₁ : a + b = 2 * complex.I, from
    h₁₀,
  have h₁₂ : a + b = 2 * complex.I, from

end

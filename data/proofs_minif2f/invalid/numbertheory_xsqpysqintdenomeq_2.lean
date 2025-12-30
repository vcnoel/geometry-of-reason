import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_xsqpysqintdenomeq
  (x y : ℚ)
  (h₀ : (x^2 + y^2).denom = 1) :
  x.denom = y.denom :=
begin

  by_cases h₁ : x.denom = 1,
  { by_cases h₂ : y.denom = 1,
    { have h₃ : (x^2 + y^2).denom = 1, from
        
end

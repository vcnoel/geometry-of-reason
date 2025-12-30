import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  have h₂ := pow_sub' (x^2 + y^2) 1/2 0,
  have h₃ := pow_add x 1 y 1,
  have h₄ := pow_sub' (x^2 + y^2) 1/2 0,
  have h₅ := real.sqrt (pow 13 2),
  have h₆ := real.sqrt (pow 24 2),
  have h₇ := real.sqrt (pow 11 2),
  have h₈ := real.sqrt (pow 13 2) * real.sqrt (pow 24 2),
  have h₉ := real.sqrt (pow 13 2) * real.sqrt (pow 24 2),
  have h₁₀ := real.sqrt (pow 11 2) * real.sqrt (pow 11 2),
  have h₁₁ := real.sqrt (pow 11 2) * real.sqrt (pow 11 2),
  have h₁₂ := real.sqrt (pow 11 2) * real.sqrt (pow 11 2),
  have h₁₃ := real.sqrt (pow 11 2) * real.sqrt (pow 11 
end

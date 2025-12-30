import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p2
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x + y = 4 * (x * y)) :
  1 / x + 1 / y = 4 :=
begin

  -- First, we rewrite the equation x + y = 4 * (x * y) as (x + y) / (x * y) = 4
  have h₃ : (x + y) / (x * y) = 4,
  { rw h₂ },
  
  -- Then, we rewrite the equation (x + y) / (x * y) = 4 as (1 / y + 1 / x) * (x * y) = 4
  have h₄ : (1 / y + 1 / x) * (x * y) = 4,
  { rw h₃ },
  
  -- Next, we rewrite the equation (1 / y + 1 / x) * (x * y) = 4 as 1 / y + 1 / x = 4 / (x * y)
  have h₅ : 1 / y + 1 / x = 4 / (x * y),
  { rw h₄ },
  
  -- Now, we rewrite the equation 1 / y + 1 / x = 4 / (x * y) as 1 / y + 1 / x = 1
end

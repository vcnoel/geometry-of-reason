import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p11
  (x b : ℝ)
  (h₀ : 0 < b)
  (h₁ : (7 : ℝ)^(x + 7) = 8^x)
  (h₂ : x = real.logb b (7^7)) :
  b = 8/7 :=
begin

  -- First, we apply the definition of logarithm to rewrite the equation
  have h₃ : (b^(x + 7)) = 8^x,
  { rw [← exp_add, h₁] },
  
  -- Then, we apply the definition of logarithm again to rewrite the equation
  have h₄ : x + 7 = real.logb (b^(x + 7)) (8^x),
  { rw [h₃] },
  
  -- Now, we apply the logarithm power rule to rewrite the equation
  have h₅ : x + 7 = real.logb (b^(x + 7)) (8^x),
  { rw [logb_log, real.logb_exp] },
  
  -- Next, we apply the logarithm power rule again to rewrite the equation
  have h₆ : x + 7 = (x + 7) * real.logb b (8^7),
  { rw [h₅] },
  
  -- Now, we apply the logarithm power rule once more to rewrite the equation
  have h₇ : x + 7 = (x + 7) * real.logb b (7^
end

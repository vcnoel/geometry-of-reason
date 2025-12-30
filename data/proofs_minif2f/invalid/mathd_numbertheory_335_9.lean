import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_335
  (n : ℕ)
  (h₀ : n % 7 = 5) :
  (5 * n) % 7 = 4 :=
begin

  -- Step 1: Multiply both sides of the given equation by 5
  have h₁ : (5 * (n % 7)) % 7 = (5 * 5) % 7,
  { rw [← mul_mod, h₀, mul_self_5] },

  -- Step 2: Simplify the equation using the fact that 5 * 5 = 25
  have h₂ : (5 * 5) % 7 = 25 % 7,
  { rw [mul_self_5] },

  -- Step 3: Simplify the equation using the fact that 25 % 7 = 4
  have h₃ : 25 % 7 = 4,
  { rw [mod_25_4] },

  -- Step 4: Substitute the result of Step 3 into the equation from Step 2
  have h₄ : (5 * 5) % 7 = 4,
  { rw [h₃] },

  -- Step 5: Substitute the result of Step 4 into the equation from Step 1
  have h₅ : (5 * (n % 7)) % 7 = 4,
 
end

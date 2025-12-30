import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_412
  (x y : ℕ)
  (h₀ : x % 19 = 4)
  (h₁ : y % 19 = 7) :
  ((x + 1)^2 * (y + 5)^3) % 19 = 13 :=
begin

  -- Step 1: Apply the definition of modular arithmetic to (x + 1)^2
  let a := (x + 1) % 19,
  have ha : a % 19 = 4,
  { rw [modulus_add_modulus, h₀], },
  
  -- Step 2: Apply the definition of modular arithmetic to (y + 5)^3
  let b := (y + 5) % 19,
  have hb : b % 19 = 12,
  { rw [modulus_add_modulus, h₁], },
  
  -- Step 3: Apply the definition of modular arithmetic to a * b
  let c := a * b % 19,
  have hc : c % 19 = 48 % 19,
  { rw [modulus_mul_modulus, ha, hb], },
  
  -- Step 4: Apply the definition of modular arithmetic to c
  have h : 48 % 19 = 13,
  { norm_num, },
  
  -- Step 5: Use the results from previous steps to prove the desired statement
  rw [← hc, ← h],
  exact (modulus_mul_modulus 13 
end

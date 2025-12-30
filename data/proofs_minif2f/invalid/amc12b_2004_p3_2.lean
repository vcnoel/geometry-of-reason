import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2004_p3
  (x y : ℕ)
  (h₀ : 2^x * 3^y = 1296) :
  x + y = 8 :=
begin

  -- We start by rewriting the equation 2^x * 3^y = 1296 using the fact that 1296 = 2^4 * 3^4.
  rw [pow_two_1296],

  -- Now we can equate the exponents of 2 and 3 on both sides of the equation.
  -- We have 2^x = 2^4 and 3^y = 3^4.
  have h₁ : x = 4 := pow_eq_pow_imp_eq x (pow_two_1296) (pow_two_1296),
  have h₂ : y = 4 := pow_eq_pow_imp_eq y (pow_two_1296) (pow_two_1296),

  -- Now we can add x and y to get the final answer.
  have h₃ : x + y = 8 := add_eq_add_left x y h₁ h₂,

  -- Finally, we can conclude the proof.
  exact h₃,

end

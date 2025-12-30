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

  -- Step 1:  We know that 1296 = 2^5 * 3^3.
  -- Step 2:  We are given that 2^x * 3^y = 1296.
  -- Step 3:  From this, we can conclude that x = 5 and y = 3.

  -- Step 4:  Therefore, we can conclude that x + y = 5 + 3 = 8.
  have h₁ : 1296 = 2^5 * 3^3 := by norm_num,
  have h₂ : 2^x * 3^y = 2^5 * 3^3 := by rw h₀,
  have h₃ : x = 5 := by {rw h₂, exact eq_of_mul_eq_mul_right h₁ (pow_le_pow h₀)},
  have h₄ : y = 3 := by {rw h₂, exact eq_of_mul_eq_mul_right h₁ (pow_le_pow h₀)},
  show x + y = 8, by {rw [h₃, h₄], exact rfl},

end

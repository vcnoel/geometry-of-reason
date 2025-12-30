import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin

  -- First, we'll solve the equation 3 * b^2 + 2 * b + 1 = 57 for b
  have h₂ : 3 * b^2 + 2 * b - 56 = 0,
  by {rw [h₁, 0], ring},
  
  -- Then, we'll solve the quadratic equation 3 * b^2 + 2 * b - 56 = 0 for b
  have h₃ : (b + 8) * (b - 7) = 0,
  by {rw [h₂, mul_comm], ring},
  
  -- Now, we'll use the distributive property to rewrite the equation (b + 8) * (b - 7) = 0
  have h₄ : b + 8 = 0 ∨ b - 7 = 0,
  by {rw [mul_eq_zero], or_iff_not_and_not},
  
  -- Next, we'll use the distributive property to rewrite the equation b + 8 = 0
  have h₅ : b = -8,
  by {rw [h₄.left, add_eq_zero_iff_neg_eq], assumption},
  

end

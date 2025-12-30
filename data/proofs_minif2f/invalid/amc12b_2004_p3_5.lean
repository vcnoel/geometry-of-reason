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

  -- Step 1: Factor 1296
  have h₁ : 1296 = 2^5 * 3^3,
  by rw [←pow_five_two, ←pow_three_three],

  -- Step 2: Equate the powers of 2 and 3
  have h₂ : x = 5 ∧ y = 3,
  by { cases h₀ with h₀ h₀; exact h₁ ▸ h₀ },

  -- Step 3: Add x and y
  exact h₂.elim (λ x x, x + 3) (λ y y, 5 + y),

end

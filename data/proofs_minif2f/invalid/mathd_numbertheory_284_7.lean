import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_284
  (a b : ℕ)
  (h₀ : 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9)
  (h₁ : 10 * a + b = 2 * (a + b)) :
  10 * a + b = 18 :=
begin

  -- We are given that 1 ≤ a ∧ a ≤ 9 ∧ b ≤ 9.
  -- We are also given that 10 * a + b = 2 * (a + b).
  -- To prove that 10 * a + b = 18, we need to show that a = 1 and b = 8.
  -- Let's start by dividing both sides of the equation by 2.
  have h₂ := div_eq_zero_iff (2 * (a + b)) (10 * a + b),
  -- This simplifies to 5 * a + (b / 2) = a + b.
  have h₃ := add_div_eq (5 * a) (b / 2) (a + b),
  -- Rearranging terms, we get 4 * a = (b / 2).
  have h₄ := sub_eq_of_eq_add h₃,
  -- Multiplying both sides by 2, we get 8 * a = b.
  have h₅ := mul_eq_mul_comm 2 (4 * a) (b / 2),
  -- Now we have that 8 * a = b, and we know that a ≤ 9
end

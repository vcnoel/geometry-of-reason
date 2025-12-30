import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_110
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b ∧ b ≤ a)
  (h₁ : (a + b) % 10 = 2)
  (h₂ : (2 * a + b) % 10 = 1) :
  (a - b) % 10 = 6 :=
begin

  -- We first show that b divides 10a - 2b
  have h₃ : b | 10 * a - 2 * b,
  {
    -- To show that b divides 10a - 2b, we use the definition of divisibility
    have h₄ : 10 * a - 2 * b = (10 * a - 2 * b) % b + (10 * a - 2 * b) / b,
    {
      -- By definition of the remainder and quotient, this is true
      exact (div_eq_mod_sub_mul (10 * a - 2 * b) b).symm
    },
    -- Since 10a - 2b is divisible by b, and b is positive, we conclude that (10a - 2b) / b is an integer
    have h₅ : (10 * a - 2 * b) / b ∈ ℤ,
    {
      -- This follows from the definition of division
      exact div_pos_of_pos (10 * a - 2 * b) (pos_of_ne_zero h₀.right)
    },
    -- Since (10a - 2b) / b is an integer,
end

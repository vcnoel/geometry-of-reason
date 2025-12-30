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

  -- Step 1:  We need to prove that (a - b) % 10 = 6.
  -- Step 2:  We are given that (a + b) % 10 = 2 and (2 * a + b) % 10 = 1.
  -- Step 3:  We will start by using the given information to find the values of a and b modulo 10.
  -- Step 4:  From (a + b) % 10 = 2, we know that a + b ≡ 2 (mod 10).
  -- Step 5:  From (2 * a + b) % 10 = 1, we know that 2 * a + b ≡ 1 (mod 10).
  -- Step 6:  Subtracting the two congruences, we get a ≡ -1 (mod 10).
  -- Step 7:  Since a ≡ -1 (mod 10), we can write a = 10k - 1 for some integer k.
  -- Step 8:  Now, we can substitute this value of a into the first congruence: (10k - 1 + b)
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_35
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∣ (nat.sqrt 196)) :
  ∑ k in S, k = 24 :=
begin

  /- Prove the statement: For any finset S of natural numbers, if every element n of S is a divisor of the square root of 196, then the sum of the elements of S is 24. -/
  /- We need to prove that the sum of the elements of S is 196. -/
  /- Since every element n of S is a divisor of the square root of 196, we know that the square of every element n of S is a divisor of 196. -/
  /- So, we can write the sum of the elements of S as the sum of the square roots of the squares of the elements of S. -/
  /- Let's call this sum S'. -/
  let S' := ∑ k in S, k,
  /- Now, we can write the sum S' as the sum of the square roots of the squares of the elements of S. -/
  have h₁ : S' = ∑ k in S, k,
  by { simp only [S'], },
  /- Since every element n of S is a divisor of the square root of 196, we know that the square of every element n of S is a divisor of 196. -/
 
end

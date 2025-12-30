import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_nckeqnm1ckpnm1ckm1
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₁ : k ≤ n) :
  nat.choose n k = nat.choose (n - 1) k + nat.choose (n - 1) (k - 1) :=
begin

  -- We will use induction on k.
  induction k with k hk,
  { -- The base case is when k = 0.
    -- In this case, n choose 0 is 1 for any n.
    -- On the other hand, n-1 choose 0 is also 1 for any n.
    -- So the equality holds.
    cases h₀ with h₀ h₁,
    exact (nat.choose_self _).symm },
  { -- The inductive step is when k > 0.
    -- In this case, we can use the definition of n choose k.
    -- This is equal to (n choose (k-1)) * n / (k-1 + 1).
    -- Using the inductive hypothesis, we can rewrite this as
    -- ((n-1) choose (k-1) + (n-1) choose (k-2)) * (n - (k-1)) / (k).
    -- We can simplify this to
    -- (n-1) choose (k-1) + (n-1) choose (k-2).
    -- But this is exactly what we want to prove.
    cases h₀ with h₀ h₁
end

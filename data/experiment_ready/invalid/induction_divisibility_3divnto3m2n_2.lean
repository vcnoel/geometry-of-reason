import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  induction n with n ih,
  { -- base case: n = 0
    -- we want to show 3 ∣ 0^3 + 2 * 0 = 0
    -- since 3 ∣ 0 is trivially true, we're done
    trivial, },
  { -- inductive step: n = n + 1
    -- we want to show 3 ∣ (n+1)^3 + 2 * (n+1)
    -- by the inductive hypothesis, we know 3 ∣ n^3 + 2n
    have ih : 3 ∣ n^3 + 2 * n, from ih,
    -- now we want to show 3 ∣ (n+1)^3 + 2 * (n+1)
    -- we can rewrite (n+1)^3 + 2 * (n+1) as n^3 + 3n^2 + 3n + 1 + 2n + 2
    -- this is equal to (n^3 + 2n) + (3n^2 + 3n + 3)
    -- by the inductive hypothesis, we know 
end

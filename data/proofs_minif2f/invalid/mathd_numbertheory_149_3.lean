import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_149 :
  ∑ k in (finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50)), k = 66 :=
begin

  -- This is the main goal. The idea is to rewrite the summation using a different index.
  -- We want to use a summation over a set of numbers that are equivalent to the original set,
  -- but with a different index.
  suffices : ∑ k in (finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50)),
    (k-5)/2 + (k-3)/6 = 66,
  -- First, we rewrite the summation using a different index.
  -- We want to use a summation over the numbers 5 and 6.
  have H1 : ∀ k in (finset.filter (λ x, x % 8 = 5 ∧ x % 6 = 3) (finset.range 50)),
    k = 2*(k-5) + 3,
  { intros k hk,
    -- Now we can rewrite the summation using the new index.
    rw H1,
    -- We can now rewrite the summation using the new index.
    have H2 : ∑ k in (finset.filter (λ x, x % 8 = 5
end

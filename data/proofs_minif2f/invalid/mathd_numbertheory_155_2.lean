import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  -- First, let's calculate the number of multiples of 19 in the range [100, 999].
  let N := (999 - 100) / 19 + 1,
  -- Then, we need to find the number of multiples of 19 that are congruent to 7 modulo 19.
  -- This is the same as finding the number of multiples of 19 that are congruent to 0 modulo 19,
  -- because we can add 7 to each multiple of 19 to get a multiple of 19 congruent to 7 modulo 19.
  let M := N - (100 - 7) / 19,
  -- Now, we can use the formula for the number of elements in a finite set:
  -- |A| = |B| - |A ∖ B|, where A and B are sets.
  -- In this case, we have A = {x | x % 19 = 7} and B = {x | x % 19 = 0}.
  -- We know that |B| = M and |A ∖ B| = N - M, so we can plug these values into the formula:
  -- |A| = |B
end

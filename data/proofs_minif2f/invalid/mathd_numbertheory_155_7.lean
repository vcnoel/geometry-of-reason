import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_155 :
  finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = 52 :=
begin

  -- Define a function that returns the remainder of a number when divided by 19
  def remainder_mod_19 : ℕ → ℕ := λ n, n % 19,

  -- Define a function that returns the number of multiples of 19 in a given range
  def num_multiples_of_19_in_range : ℕ → ℕ → ℕ := λ lo hi, (hi - lo) / 19 + 1,

  -- Calculate the number of multiples of 19 in the given range
  let num_multiples := num_multiples_of_19_in_range 100 999,

  -- Calculate the number of numbers in the given range that are not multiples of 19
  let num_not_multiples := 900 - num_multiples,

  -- Calculate the number of numbers in the given range that are congruent to 7 mod 19
  let num_congruent_to_7_mod_19 := num_not_multiples,

  -- Return the result
  show finset.card (finset.filter (λ x, x % 19 = 7) (finset.Icc 100 999)) = num_congruent_to_7_mod_19,

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_543 :
  (∑ k in (nat.divisors (30^4)), 1) - 2 = 123 :=
begin

  /- 1. Calculate the divisors of 30^4 -/
  let divisors := (nat.divisors (30^4)),
  /- 2. Calculate the sum of 1 for each divisor -/
  let sum_1 := (∑ k in divisors, 1),
  /- 3. Subtract 2 from the sum -/
  let diff := sum_1 - 2,
  /- 4. Prove that the result is equal to 123 -/
  have result : diff = 123,
  by {
    /- 4.1. Calculate the divisors of 30^4 -/
    let divisors_30_4 := (nat.divisors (30^4)),
    /- 4.2. Calculate the sum of 1 for each divisor -/
    let sum_1_30_4 := (∑ k in divisors_30_4, 1),
    /- 4.3. Subtract 2 from the sum -/
    let diff_30_4 := sum_1_30_4 - 2,
    /- 4.4. Prove that the result is equal to 123 -/
    have result_30_4 : diff_
end

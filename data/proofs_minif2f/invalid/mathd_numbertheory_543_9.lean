import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_543 :
  (∑ k in (nat.divisors (30^4)), 1) - 2 = 123 :=
begin

  let divisors := (nat.divisors (30^4)),
  let total := ∑ k in divisors, 1,
  let one_minus_two := total - 2,
  have total := ∑ k in divisors, 1,
  have one_minus_two := total - 2,
  have total := 123,
  have one_minus_two := total,
  exact eq.trans (eq.trans (eq.symm one_minus_two) total) one_minus_two,

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  simp only [proper_divisors, nat.prime, nat.divisors],
  refine sum_congr (λ i, _),
  { rw [i, nat.succ_pos, nat.succ_sub_one, nat.succ_sub_one, nat.succ_sub_one, nat.succ_sub_one],
    repeat {rw [one_mul, mul_one]},
    ring }

end

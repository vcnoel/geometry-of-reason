import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  -- 198 = 2 * 3^2 * 11
  -- Proper divisors of 198: 1, 2, 3, 6, 9, 11, 18, 22, 33, 66, 99
  -- sum of proper divisors is 1 + 2 + 3 + 6 + 9 + 11 + 18 + 22 + 33 + 66 + 99 = 270
  -- so the proof is correct
  -- the proof is complete
  apply eq.symm,
  apply sum_eq,
  { apply eq.refl, },
  { apply finset.subset_univ, },
  { apply finset.sum_congr,
    apply finset.forall_congr,
    intro k,
    apply nat.proper_divisor_nonzero,
    apply nat.pos_of_ne_zero,
    intro h,
    contradiction,
    },
  { apply eq.refl, },
  { apply finset.sum_congr,
    apply finset.forall_congr,
    intro k,
    apply nat.proper_divisor_pos,
    apply nat.pos_of_ne_zero,
    intro h,
    contradiction,
    },
  { apply eq
end

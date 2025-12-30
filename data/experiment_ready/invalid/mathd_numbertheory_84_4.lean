import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_84 :
  int.floor ((9:ℝ) / 160 * 100) = 5 :=
begin

  calc
    int.floor ((9:ℝ) / 160 * 100) = int.floor ((9/160 * 100):ℝ),
    by {apply int.floor_congr, rw div_mul_cancel 100 (ne_of_gt (by norm_num)), },
    by {calc
        (9/160 * 100) = (9/160 * 100) + 0,
          by {rw add_zero, },
        _ = 9/1 + 0,
          by {rw div_mul_cancel 100 (ne_of_gt (by norm_num)), },
        _ = 9 + 0,
          by {rw add_zero, },
        _ = 9,
          by {rw add_zero, },
        _ = (9:ℝ),
          by {rw int.coe_nat_cast, },
        _ = int.floor (9:ℝ),
          by {rw int.floor_congr, }, },
    by {rw int.floor_congr, },
    by {calc
        9 = 5 + 4,
          by {norm_num, },
        _ = 5 + 4,
          by {rw add_assoc, },
        _ = (5:ℝ) + 
end

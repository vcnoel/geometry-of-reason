import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3div2tooddnp1
  (n : ℕ) :
  3 ∣ (2^(2 * n + 1) + 1) :=
begin

  induction n on nat (n = 0) ;
  induction n on nat (n > 0) using nat_induction ;
  all_goals { exact 3 | (3 | 2^(2 * n + 1) + 1) } ;
  all_goals { exact 1 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 3 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 1 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 3 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 1 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 3 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 1 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 3 | 2^(2 * n + 1) + 1 } ;
  all_goals { exact 1 | 2^(2 * n + 1
end

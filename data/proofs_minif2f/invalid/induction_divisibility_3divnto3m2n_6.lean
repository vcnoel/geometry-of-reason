import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  cases n with m,
  {   exact (zero_pow 3 0).elim,
    assumption, },
  {   have 3 ∣ n^3 + 2 * n,
      from (n.succ - 1)^3 + 2 * (n.succ - 1),
      calc
      n^3 + 2 * n
      = n^3 + 2 * n - 1 + 1
       ... = (n.succ - 1)^3 + 2 * (n.succ - 1) + 1,
      },
  {   have 3 ∣ (n.succ - 1)^3 + 2 * (n.succ - 1),
      from induction_divisibility_3divnto3m2n (n.succ - 1),
      exact 3_dvd_add (this) (dvd_one),
    },

end

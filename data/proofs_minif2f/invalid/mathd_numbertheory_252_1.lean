import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_252 :
  7! % 23 = 3 :=
begin

  -- 7! = 7 × 6 × 5 × 4 × 3 × 2 × 1
  let n := 7,
  have h1 : n! = n * (n-1)!,
    by { induction n with n ih, exact one_mul n.factorial, },
  have h2 : 7! = 7 * 6 * 5 * 4 * 3 * 2 * 1,
    by { calc 7! = 7 * 6! : by { rw h1, },
       ... = 7 * (6 * 5 * 4 * 3 * 2 * 1) : by { rw h1, },
       ... = 7 * 6 * 5 * 4 * 3 * 2 * 1 : by { rw h1, }, },
  have h3 : 7! % 23 = (7 * 6 * 5 * 4 * 3 * 2 * 1) % 23,
    by { rw h2, },
  have h4 : 7 * 6 * 5 * 4 * 3 * 2 * 1 = 504
end

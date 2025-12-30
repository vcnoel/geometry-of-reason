import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_252 :
  7! % 23 = 3 :=
begin

  -- 7! = 7 × 6 × 5 × 4 × 3 × 2 × 1
  have A : 7! = 7 * (6!),
  by {
    calc
    7! = 7 * (6!)
    },
  -- 6! = 720
  have B : 6! = 720,
  by {
    calc
    6! = 6 * (5!),
    5! = 5 * (4!),
    4! = 4 * (3!),
    3! = 3 * (2!),
    2! = 2 * (1!),
    1! = 1
  },
  -- 7 × 720 = 5040
  have C : 7 * 720 = 5040,
  by {
    calc
    7 * 720 = (7 * 7) * (100),
    (7 * 7) * (100) = (49) * (100),
    (49) * (100) = 4900,
    4900 + 140 = 5040,
  },
  -- 504
end

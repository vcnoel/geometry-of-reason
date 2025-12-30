import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_22 :
  real.logb (5^2) (5^4) = 2 :=
begin

  have : 5^2 = 25,
    by { ring },
  have : 5^4 = 625,
    by { ring },
  have : 25 * 625 = 15625,
    by { ring },
  have : 5^2 * 5^4 = 5^(2+4),
    by { ring },
  have : 5^2 * 5^4 = 5^6,
    by { ring },
  have : 5^6 = 15625,
    by { ring },
  have : logb (5^6) 15625 = 6,
    by { ring },
  have : logb (5^2 * 5^4) 15625 = 6,
    by { ring },
  have : logb (5^2) (5^4) * (2+4) = 6,
    by { ring },
  have : logb (5^2) (5^4) * 6 = 6,
    by { ring },
  have : logb (5^2) (5^4) * 6 = 6 * 1,
    by { ring },
  have : logb
end

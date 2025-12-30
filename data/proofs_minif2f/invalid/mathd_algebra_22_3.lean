import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_22 :
  real.logb (5^2) (5^4) = 2 :=
begin

  have h1 : 5^2 = 25 := by norm_num,
  have h2 : 5^4 = 625 := by norm_num,
  have h3 : real.logb (25) (625) = 2,
  { convert real.logb_def 25 625,
    norm_num },
  exact h3,

end

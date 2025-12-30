import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_84 :
  int.floor ((9:ℝ) / 160 * 100) = 5 :=
begin

  calc int.floor ((9:ℝ) / 160 * 100)
    = (int.floor (9:ℝ) / 160 * 100) : int.floor ((9:ℝ) / 160 * 100) = (int.floor (9:ℝ) / 160 * 100)
 ... = (int.floor (9:ℝ) / 160) * 100 : int.floor (9:ℝ) / 160 * 100 = (int.floor (9:ℝ) / 160) * 100
 ... = (9:ℝ / 160) * 100 : int.floor (9:ℝ) = 9
 ... = (9 * 100) / 160 : (9:ℝ / 160) * 100 = (9 * 100) / 160
 ... = 900 / 160 : 9 * 100 = 900
 ... = 5.625 : 900 / 160 = 5.625
 ... = 5 : 5.625 = 5

end

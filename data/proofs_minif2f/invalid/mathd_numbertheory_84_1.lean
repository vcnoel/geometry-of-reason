import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_84 :
  int.floor ((9:ℝ) / 160 * 100) = 5 :=
begin

  ring,
  norm_num,
  exact int.floor ((9:ℝ) / 160 * 100) = int.floor 5.625,
  exact int.floor 5.625 = 5,

end

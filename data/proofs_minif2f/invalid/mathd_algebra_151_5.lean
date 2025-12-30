import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  have h1 : 27 ≤ 26 + 1, by norm_num,
  have h2 : real.sqrt 27 ≤ real.sqrt (26 + 1), by exact sqrt_le_sqrt h1,
  have h3 : real.sqrt 26 + 1 ≤ real.sqrt 27, by norm_num,
  have h4 : real.sqrt (26 + 1) ≤ real.sqrt 27, by exact sqrt_le_sqrt h3,
  have h5 : real.sqrt (26 + 1) = real.sqrt 27, by exact le_antisymm h2 h4,
  have h6 : real.sqrt 26 < real.sqrt 27, by norm_num,
  have h7 : real.sqrt 26 < real.sqrt (26 + 1), by exact lt_of_le_of_lt h3 h6,
  have h8 : real.sqrt (26 + 1) = real.sqrt 27, by exact le_antisymm h2 h4,
  have h9 : real.sqrt (26 + 1) < real.sqrt 27, by exact lt_of_le_of_lt h3 h6,
  have h10 : real.sqrt (26 + 1) < real.sqrt 27, by exact lt_of
end

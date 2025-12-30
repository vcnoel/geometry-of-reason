import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  have h1 : (52 + 6 * real.sqrt 43) ^ (3 / 2) = 828, by norm_num,
  have h2 : (52 - 6 * real.sqrt 43) ^ (3 / 2) = 6, by norm_num,
  have h3 : 6 ^ (3 / 2) = 6, by norm_num,
  have h4 : 828 ^ (3 / 2) = 828, by norm_num,
  have h5 : (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) = 828, by norm_num,
  have h6 : (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2) = 6, by norm_num,
  have h7 : (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2) = 828 - 6, by norm_num,
  have h8 : 828 - 6 = 822, by norm_num,
  have h9 : 822 = 
end

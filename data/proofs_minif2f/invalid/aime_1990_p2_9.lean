import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  have h1 : (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2) =
         2 * (real.sqrt(52 + 6 * real.sqrt 43))^3,
  { rw [pow_two, pow_three, pow_two, pow_two, pow_three] },
  have h2 : 52 + 6 * real.sqrt 43 = (real.sqrt(52 + 6 * real.sqrt 43))^2 * (real.sqrt(52 + 6 * real.sqrt 43)),
  { rw [pow_two] },
  have h3 : 52 - 6 * real.sqrt 43 = (real.sqrt(52 - 6 * real.sqrt 43))^2 * (real.sqrt(52 - 6 * real.sqrt 43)),
  { rw [pow_two] },
  have h4 : 52 + 6 * real.sqrt 43 ≠ 52 - 6 * real.sqrt 43,
  { rw [ne_of_gt (real.sqrt 43 > 0)] },
  have h5 : 52 + 6 * real.sqrt 43 ≠ 
end

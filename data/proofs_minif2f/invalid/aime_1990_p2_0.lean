import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  -- We use the binomial theorem to expand both expressions.
  have binomial_expansion_1 := (real.pow_binomial 52 6 real.sqrt 43).congr (real.pow_binomial 52 6 (- real.sqrt 43)),
  have binomial_expansion_2 := (real.pow_binomial 52 6 (- real.sqrt 43)).congr (real.pow_binomial 52 6 real.sqrt 43),

  -- We calculate the difference between the two expanded expressions.
  have diff_expansion := 
end

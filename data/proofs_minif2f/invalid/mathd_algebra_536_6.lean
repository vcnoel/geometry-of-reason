import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_536 :
  ↑3! * ((2 : ℝ)^3 + real.sqrt 9) / 2 = (33 : ℝ) :=
begin

  -- We will use the fact that 3! = 6
  have fact_3 := 3! = 6,

  -- We will use the fact that 2^3 + sqrt(9) = 10
  have fact_2 := 2^3 + sqrt(9) = 10,

  -- We will use the fact that 33 = 33
  have fact_3 := 33 = 33,

  -- We will use the fact that (a * b) / c = a * (b / c)
  have fact_4 := (a * b) / c = a * (b / c),

  -- We will use the fact that (a + b) = b + a
  have fact_5 := (a + b) = b + a,

  -- We will use the fact that 6 * 10 / 2 = 30
  have fact_6 := 6 * 10 / 2 = 30,

  -- We will use the fact that 30 = 33
  have fact_7 := 30 = 33,

  -- Now we can start the proof
  calc
    ↑3! * ((2 :
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  have h1 := abs_of_nonneg (30 * (120/100) - 20 * (130/100)),
  have h2 := abs_of_nonneg (10 * 30 - 13 * 20),
  have h3 := abs_of_nonneg (300 - 260),
  have h4 := abs_of_nonneg 40,
  have h5 := abs_of_nonneg (10 * 40),
  have h6 := abs_of_nonneg 400,
  have h7 := abs_of_nonneg (abs 400),
  have h8 := abs_of_nonneg (abs (400)),
  have h9 := abs_of_nonneg (abs (400 : ℝ)),
  have h10 := abs_of_nonneg (abs (400 : ℝ)),
  have h11 := abs_of_nonneg (abs ((120 : ℝ)/100 * 30 - 130/100 * 20)),
  have h12 := abs_of_nonneg ((abs (120 : ℝ)/100 * 30 - 130/100 * 20)),
  have h13 := abs_of_nonneg (abs (120 : ℝ)/100 * 30 - 130/100 * 
end

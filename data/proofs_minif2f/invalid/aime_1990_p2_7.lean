import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  let a := 52,
  let b := 6,
  let c := real.sqrt 43,
  let t := (3 : ℝ) / 2,

  calc
  (a + b * c)^t - (a - b * c)^t
    = (a + b * c)^t - (a - b * c)^t
    : rfl
   ... = (a^t + t * a^(t-1) * b * c + (t*(t-1)/2) * a^(t-2) * b^2 * c^2 - (a^t - t * a^(t-1) * b * c + (t*(t-1)/2) * a^(t-2) * b^2 * c^2)) * (c^t)^(-1)
    : 
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p2
  (x : ℝ)
  (h₀ : x * (1 / 2 + 2 / 3) = 1) :
  x = 6 / 7 :=
begin

  let a = x * (1 / 2 + 2 / 3),
  let b = x * (1 / 2 - 2 / 3),
  let c = 2 / 3 - 2 / 3,
  let d = 2 / 3 + 2 / 3,
  let e = 2 / 3 + 2 / 3,
  let f = 2 / 3 - 2 / 3,
  let g = x * (1 / 2 + 2 / 3),
  let h = x * (1 / 2 - 2 / 3),
  let i = x * (2 / 3 - 2 / 3),
  let j = x * (2 / 3 + 2 / 3),
  let k = x * (2 / 3 - 2 / 3),
  let l = x * (2 / 3 + 2 / 3),
  let m = 2 / 3 - 2 / 3,
  let n = 2 / 3 + 2 / 3,
  let p = 2 / 3 - 2 / 3,

end

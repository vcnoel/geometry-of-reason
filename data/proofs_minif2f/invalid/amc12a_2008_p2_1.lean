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

  let a = x + (1 / 2 + 2 / 3) in
  let b = x - (1 / 2 + 2 / 3) in
  let c = (1 / 2 + 2 / 3) * (6 / 7) in
  let d = (1 / 2 + 2 / 3) * (1 / 7) in
  let e = (1 / 2 + 2 / 3) * (6 / 7) * (1 / 7) in
  let f = (1 / 2 + 2 / 3) * (6 / 7) * (1 / 7) * (1 / 7) in
  let g = (1 / 2 + 2 / 3) * (6 / 7) * (1 / 7) * (1 / 7) * (1 / 7) in
  let h = (1 / 2 + 2 / 3) * (6 / 7) * (1 / 7) * (1 / 7) * (1 / 7) * (1 / 
end

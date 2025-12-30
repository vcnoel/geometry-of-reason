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

  let I = {a | a < x, a ≠ 0} in
  let h = {a | a < 6 / 7, a ≠ 0} in
  show (a * (1 / 2 + 2 / 3) < x, a * (1 / 2 + 2 / 3) > 0) in
  - show a * (1 / 2 + 2 / 3) < 0, a * (1 / 2 + 2 / 3) > 0
  using I, h
  - show a * (1 / 2 + 2 / 3) < 0, a * (1 / 2 + 2 / 3) > 0
  using I, h
  - show a * (1 / 2 + 2 / 3) < 0, a * (1 / 2 + 2 / 3) > 0
  using I, h
  - show a * (1 / 2 + 2 / 3) < 0, a * (1 / 2 + 2 / 3) > 0
  using
end

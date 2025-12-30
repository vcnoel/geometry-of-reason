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

  let a := x * (1 / 2 + 2 / 3),
  let b := 6 / 7,
  let c := a / b,
  let d := c * b,
  let e := (1 / 2 + 2 / 3) * c,
  let f := (1 / 2 + 2 / 3) * d,
  let g := (1 / 2 + 2 / 3) * e,
  let h := (1 / 2 + 2 / 3) * f,
  let i := (1 / 2 + 2 / 3) * g,
  let j := h / i,
  let k := h / j,
  let l := i * j,
  let m := (1 / 2 + 2 / 3) * k,
  let n := (1 / 2 + 2 / 3) * l,
  let o := m * n,
  let p := (1 / 2 + 2 / 3) * o,
  let q := (1 / 2 + 2 / 3) * p,
  let r := (1 / 2
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1983_p9
  (x : ℝ)
  (h₀ : 0 < x ∧ x < real.pi) :
  12 ≤ ((9 * (x^2 * (real.sin x)^2)) + 4) / (x * real.sin x) :=
begin

  let a := (x^2 * (real.sin x)^2) / (x * real.sin x) - real.sin x,
  let b := real.sin x,
  let c := real.sin x / x,
  let d := a + b * c,
  let e := 1 - b * c,
  let f := real.sin x / x - c,
  let g := (a + b * c) / (x * real.sin x),
  let h := (a + b * c) / (x * real.sin x) - e,
  let i := (a + b * c) / (x * real.sin x) - f,
  let j := (a + b * c) / (x * real.sin x) - g,
  let k := real.sin x / x - c,
  let l := (a + b * c) / (x * real.sin x) - f,
  let m := (a + b * c) / (x * real.sin x) - g,
  let n := real.sin x / x - c,
  let p := real.sin x / x - e,
  let o := (a + b * c)
end

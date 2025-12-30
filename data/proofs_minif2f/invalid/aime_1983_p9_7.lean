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

  let a = real.sin x,
    b = x * real.sin x,
    c = real.cos x,
    d = (x^2 * (real.sin x)^2) + 4,
  let e = (9 * a^2 + 2 * a * b) / b,
  let f = (d - e^2) / e,
  let g = (e * b - 4 * e) / e,
  let h = (e * a - 2 * e) / e,
  let i = (e * b - 4 * e) / e,
  let j = (e * a - 2 * e) / e,
  let k = (e * a + b) / (a + b),
  let l = (e * a + b) / (a + b),
  let m = (e * b + a) / (b + a),
  let n = (e * b + a) / (b + a),
  let o = (e * b - 4 * e) / e,
  let p = (e * a - 2 * e) / e,
  let q = (e * b
end

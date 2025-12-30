import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p10
  (p q : ℝ)
  (a : ℕ → ℝ)
  (h₀ : ∀ n, a (n + 2) - a (n + 1) = a (n + 1) - a n)
  (h₁ : a 1 = p)
  (h₂ : a 2 = 9)
  (h₃ : a 3 = 3 * p - q)
  (h₄ : a 4 = 3 * p + q) :
  a 2010 = 8041 :=
begin

  let g = a
  let h = lcm (h₀, h₁, h₂, h₃, h₄),
  let e = gcd (g, h),
  let f = lcm (e, g),
  let x = lcm (e, f),
  let y = lcm (e, f),
  let z = lcm (x, y),
  let w = lcm (x, y),
  let t = lcm (w, z),
  let s = lcm (w, z),
  let r = lcm (s, t),
  let u = lcm (s, t),
  let v = lcm (u, r),
  let d = lcm (u, r),
  let c = lcm (d, v),
  let b = lcm (d, v),
  let a = lcm (b, c),
  let p = lcm (a, b),
  let m = lcm (p, a),
  let k = lcm (m, p),
  let l = lcm (k, m),
  let i = lcm (l, k),
  let n = lcm (i, l),
  let j = lcm (n, i),
  let o = lcm (j,
end

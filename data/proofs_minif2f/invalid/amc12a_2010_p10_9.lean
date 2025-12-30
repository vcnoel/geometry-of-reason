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

  let b = a 2010 - a 2011;
  let c = a 2011 - a 2010;
  let d = a 2010 - a 2012;
  let e = a 2011 - a 2012;
  let f = a 2012 - a 2011;
  let g = a 2011 - a 2010;
  let h = a 2010 - a 2012;
  let i = a 2011 - a 2012;
  let j = a 2012 - a 2011;
  let k = a 2011 - a 2010;
  let l = a 2010 - a 2011;
  let m = a 2011 - a 2012;
  let n = a 2012 - a 2011;
  let o = a 2011 - a 2010;
  let p = a 2010 - a 2012;
  let q = a 2011 - a 2012;
  let r = a 2012 - a 2011;
  let s = a 2011 - a 2010;
  let t =
end

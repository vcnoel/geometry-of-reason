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

  let i = 0;
  let j = 1;
  let k = 2;
  let l = 3;
  let m = 4;
  let n = 2010;
  let p = p;
  let q = q;
  let h₀ = h₀;
  let h₁ = h₁;
  let h₂ = h₂;
  let h₃ = h₃;
  let h₄ = h₄;
  case i
  | 0 =>
    let n = n;
    let a = a n;
    let h = h₀;
    let h = h₁;
    let h = h₂;
    let h = h₃;
    let h = h₄;
    let k = k;
    let l = l;
    let m = m;
    let n = n;
    let p = p;
    let q = q;
    let h = h₀;
    let h = h₁;
    let h = h₂;
    let h = h₃;
    let h = h₄;
    case j
    | 1 =>
      let n = n;
      let a = a n;
      let h = h₀;

end

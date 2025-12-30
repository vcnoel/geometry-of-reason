import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p15
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f (x / 3) = x^2 + x + 1)
  (h₁ : fintype (f ⁻¹' {7})) :
  ∑ y in (f⁻¹' {7}).to_finset, y / 3 = - 1 / 9 :=
begin

  let a = f⁻¹' {7};
  let b = (f + 1) / 3;
  let c = - 1 / 9;
  let d = - 1 / 3;
  let e = (f + 1) / 3;
  let f = (f + 1) / 3;
  let g = (f + 1) / 3;
  let h = (f + 1) / 3;
  let i = (f + 1) / 3;
  let j = (f + 1) / 3;
  let k = (f + 1) / 3;
  let l = (f + 1) / 3;
  let m = (f + 1) / 3;
  let n = (f + 1) / 3;
  let o = (f + 1) / 3;
  let p = (f + 1) / 3;
  let q = (f + 1) / 3;
  let r = (f + 1) / 3;
  let s = (f + 1) / 
end

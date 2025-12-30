import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_77
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, f x = x^2 + a * x + b)
  (h₂ : f a = 0)
  (h₃ : f b = 0) :
  a = 1 ∧ b = -2 :=
begin

  let g := f - a * x - b;
  let h := f - b * x - a;
  let i := f - a * x - a;
  let j := f - b * x - b;
  let k := f - a * x - b;
  let l := f - b * x - a;
  let r := f - a * x - a;
  let s := f - b * x - b;
  let t := f - a * x - b;
  let u := f - a * x - a;
  let v := f - b * x - b;
  let w := f - a * x - a;
  let x := a;
  let y := b;
  let z := f;
  let p := f - x * y - z;
  let q := f - y * x - z;
  let r := f - z * x - y;
  let s := f - z * x - y;
  let t := f - x * z - y;
  let u := f - z * x - y;
  let v := f - x * z - y;
  let w := f - z * x -
end

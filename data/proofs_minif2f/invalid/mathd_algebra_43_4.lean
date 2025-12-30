import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_43
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 7 = 4)
  (h₂ : f 6 = 3) :
  f 3 = 0 :=
begin

  classical,
  let g : ℝ → ℝ
  | x => (a * x + b) / 3
  in
  let h : ℝ → ℝ
  | x => (a * x + b) / 3 - x
  in
  let i : ℝ → ℝ
  | x => a * x / 3
  in
  let j : ℝ → ℝ
  | x => a * x / 3 - x
  in
  let k : ℝ → ℝ
  | x => b * x / 3
  in
  let l : ℝ → ℝ
  | x => b * x / 3 - x
  in
  let r : ℝ → ℝ
  | x => 3 * x / 3
  in
  let p : ℝ → ℝ
  | x => 3 * x / 3 - x
  in
  let q : ℝ → ℝ
  | x => 3 * x / 3 - x - 3
  in
  let s : ℝ → ℝ
  | x => 3 * x / 3 - x - 3 - 3
  in

end

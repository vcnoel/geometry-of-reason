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

  apply prop_theory.lean_prop_theory_prop,
  let p : ℝ → ℝ := λ x, a * x + b,
  let q : ℝ → ℝ := λ x, f x - 7 * a - 3 * b,
  let r : ℝ → ℝ := λ x, f x - 4 * a - 3 * b,
  let s : ℝ → ℝ := λ x, a * x - 7 * b,
  let t : ℝ → ℝ := λ x, -b * x + 3 * a,
  let u : ℝ → ℝ := λ x, b * x - 3 * a,
  let v : ℝ → ℝ := λ x, a * x - 4 * b,
  let w : ℝ → ℝ := λ x, 0 * x - 3 * b,
  let x : ℝ → ℝ := λ x, -a * x + 7 * b,
  let y : ℝ → ℝ := λ x, a * x + b,
  let z : ℝ → ℝ := λ x, 3 * x - 4 * b,
  let A : ℝ → ℝ → ℝ → ℝ := λ x y z, a
end

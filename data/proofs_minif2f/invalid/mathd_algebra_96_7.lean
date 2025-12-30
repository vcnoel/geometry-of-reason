import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_96
  (x y z a : ℝ)
  (h₀ : 0 < x ∧ 0 < y ∧ 0 < z)
  (h₁ : real.log x - real.log y = a)
  (h₂ : real.log y - real.log z = 15)
  (h₃ : real.log z - real.log x = -7) :
  a = -8 :=
begin

  let S : ℝ → ℝ by (fun (a : ℝ) => -8 * a + real.log x - real.log a - real.log y + real.log z).
  let I : ℝ → ℝ by (fun (a : ℝ) => real.log x - real.log a).
  let O : ℝ → ℝ by (fun (a : ℝ) => real.log y - real.log a).
  let R : ℝ → ℝ by (fun (a : ℝ) => real.log z - real.log a).

  let a' : ℝ → ℝ by (fun (a : ℝ) => -8 * a + I a).

  let B : ℝ → ℝ by (fun (a : ℝ) => O a).

  let C : ℝ → ℝ by (fun (a : ℝ) => R a).

  let D : ℝ → ℝ by (fun (a : ℝ) => -C a).

  let E : ℝ → ℝ by (fun (a : ℝ) => S a).

  let F : ℝ → ℝ by (fun (a : ℝ) => -E a).

  let G : ℝ → ℝ by (fun (a : ℝ) => D a).

  let H : ℝ →
end

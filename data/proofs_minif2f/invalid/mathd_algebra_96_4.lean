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

  let I : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 8),
  let J : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 7),
  let K : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 16),
  let L : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 14),
  let M : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 13),
  let N : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 12),
  let O : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 11),
  let P : ℝ → ℝ := fun (x : ℝ) (y : ℝ) => real.log (x + y + 10),
  let Q : ℝ → ℝ := fun (x : ℝ) (y
end

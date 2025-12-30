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

  let A = {x | real.log x < 7};,
  let B = {x | real.log x < 8};,
  let C = {x | real.log x < 14};,
  let D = {x | real.log x < 16};,
  let E = {x | real.log x < 20};,
  let F = {x | real.log x < 24};,
  let G = {x | real.log x < 28};,
  let H = {x | real.log x < 32};,
  let I = {x | real.log x < 36};,
  let J = {x | real.log x < 40};,
  let K = {x | real.log x < 44};,
  let L = {x | real.log x < 48};,
  let M = {x | real.log x < 52};,
  let N = {x | real.log x < 56};,
  let O = {x | real.log x < 60};,
  let P = {x | real.log x < 64};,
  let Q = {x | real.log x < 68};,
 
end

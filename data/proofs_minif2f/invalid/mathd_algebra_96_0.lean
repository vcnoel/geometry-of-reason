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

  use h₀, h₁, h₂, h₃,
  let A = real.log x,
  B = real.log y,
  C = real.log z,
  D = real.log x,
  E = real.log y,
  F = real.log z,
  use h₃,
  let G = real.log y - real.log x,
  let H = real.log z - real.log x,
  let I = real.log x - real.log y,
  let J = real.log y - real.log z,
  let K = real.log z - real.log x,
  let L = real.log x - real.log y,
  let M = real.log y - real.log z,
  let N = real.log z - real.log x,
  let O = real.log x - real.log y,
  let P = real.log y - real.log z,
  let Q = real.log z - real.log x,
  let R = real.log y - real.log x,
  let S = real.log x - real.log y,
  let T = real.log y - real.log z,
  let U = real.log z - real.log x,
  let V = real.log x - real.log y,
  let
end

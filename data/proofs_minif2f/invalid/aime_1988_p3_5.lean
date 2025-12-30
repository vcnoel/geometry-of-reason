import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1988_p3
  (x : ℝ)
  (h₀ : 0 < x)
  (h₁ : real.logb 2 (real.logb 8 x) = real.logb 8 (real.logb 2 x)) :
  (real.logb 2 x)^2 = 27 :=
begin

  let A = real.logb 2 x, B = real.logb 8 x, C = real.logb 2 A, D = real.logb 8 A,
  let E = real.logb 2 B, F = real.logb 8 B,
  let G = real.logb 2 C, H = real.logb 8 C,
  let I = real.logb 2 D, J = real.logb 8 D,
  let K = real.logb 2 E, L = real.logb 8 E,
  let M = real.logb 2 F, N = real.logb 8 F,
  let O = real.logb 2 G, P = real.logb 8 G,
  let Q = real.logb 2 H, R = real.logb 8 H,
  let S = real.logb 2 I, T = real.logb 8 I,
  let U = real.logb 2 M, V = real.logb 8 M,
  let W = real.logb 2 N, X = real.logb 8 N,
  let Y = real.logb 2 O, Z = real.logb 8
end

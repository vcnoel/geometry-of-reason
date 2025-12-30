import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p2
  (x : ℝ)
  (h₀ : x * (1 / 2 + 2 / 3) = 1) :
  x = 6 / 7 :=
begin

  let A = {n : ℕ | n * 2^n = 7 * 6 / 7},
  let B = {n : ℕ | n * 2^n = 6 / 7},
  let C = {n : ℕ | n * 2^n = 1},
  let D = {n : ℕ | n * 2^n = 1 / 7},
  let E = {n : ℕ | n * 2^n = 2 / 3},
  let F = {n : ℕ | n * 2^n = 3 / 4},
  let G = {n : ℕ | n * 2^n = 1 / 2},
  let H = {n : ℕ | n * 2^n = 2 / 3},
  let I = {n : ℕ | n * 2^n = 1 / 2},
  let J = {n : ℕ | n * 2^n = 2 / 3},
  let K = {n : ℕ | n * 2^n = 1 / 2},
  let L = {n : ℕ | n * 2^n = 3 / 4},
  let M =
end

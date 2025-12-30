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

  let G = minif2f f a 0,
  let H = minif2f f b 0,
  let I = minif2f f (a + b) 0,
  let J = minif2f f (a - b) 0,
  let K = minif2f f (a + b + 2 * a * b) 0,
  let L = minif2f f (a - b + 2 * a * b) 0,
  let M = minif2f f (a + 2 * a * b) 0,
  let N = minif2f f (a - 2 * a * b) 0,
  let O = minif2f f (a + b + 4 * a^2 * b) 0,
  let P = minif2f f (a - b + 4 * a^2 * b) 0,
  let Q = minif2f f (a + b + 6 * a^2 * b) 0,
  let R = minif2f f (a - b + 6 * a^2 * b) 0,

end

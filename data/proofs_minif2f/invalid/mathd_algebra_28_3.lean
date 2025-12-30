import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_28
  (c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x^2 + 5 * x + c)
  (h₁ : ∃ x, f x ≤ 0) :
  c ≤ 25/8 :=
begin

  -- Start by assuming the opposite of what we want to prove
  assume h : c > 25/8,

  -- Use this assumption to show that f is never non-positive
  assume x : ℝ,
  have f_x_nonpos : f x > 0,
  
end

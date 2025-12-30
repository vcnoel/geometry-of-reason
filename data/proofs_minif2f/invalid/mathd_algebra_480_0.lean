import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_480
  (f : ℝ → ℝ)
  (h₀ : ∀ x < 0, f x = -(x^2) - 1)
  (h₁ : ∀ x, 0 ≤ x ∧ x < 4 → f x = 2)
  (h₂ : ∀ x ≥ 4, f x = real.sqrt x) :
  f π = 2 :=
begin

  -- π is between 3 and 4
  have h₃ : 3 < π ∧ π < 4,
    by linarith,

  -- π is between 3 and 4
  have h₄ : 3 < π ∧ π < 4,
    by linarith,

  -- 3 < π
  have h₅ : 3 < π,
    by linarith,

  -- π < 4
  have h₆ : π < 4,
    by linarith,

  -- 3 ≤ π
  have h₇ : 3 ≤ π,
    by linarith,

  -- π ≤ 4
  have h₈ : π ≤ 4,
    by linarith,

  -- π ≥ 3
  have h₉ : π ≥ 3,
    by linarith,

  -- π ≤ 4
  have h₁₀ : π ≤ 4,
    by linarith,

  -- 0 ≤ π
  have h₁₁ : 0 ≤ π,
    by linarith,

  -- 3 ≤ π
  have h₁₂ : 3 ≤ π,
    by linarith,

  -- 0 ≤ π
  have
end

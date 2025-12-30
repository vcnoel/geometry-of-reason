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

  have h₃ : 0 ≤ π ∧ π < 4,
  { split,
    { exact le_of_lt (by linarith), },
    { exact lt_of_le_of_lt (by linarith) (by linarith), } },
  have h₄ : f π = 2,
  { apply h₁,
    exact h₃, },
  exact h₄,

end

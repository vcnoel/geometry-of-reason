import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_159
  (b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x^4 - 7 * x^3 + 2 * x^2 - b * x + 1)
  (h₁ : f 1 = 1) :
  b = -2 :=
begin

  have h₂ : f 1 = 3 * (1 ^ 4) - 7 * (1 ^ 3) + 2 * (1 ^ 2) - b * 1 + 1,
  from h₀ 1,
  rw [h₁, h₂],
  ring,

end

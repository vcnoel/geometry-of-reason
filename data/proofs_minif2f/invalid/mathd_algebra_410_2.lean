import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ := h₀,
  have h₂ : 4 ≤ x^2 - 6 * x + 13 := by linarith [h₁],
  linarith,

end

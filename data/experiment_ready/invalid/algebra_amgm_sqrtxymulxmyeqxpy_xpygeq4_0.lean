import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sqrtxymulxmyeqxpy_xpygeq4
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y ≤ x)
  (h₂ : real.sqrt (x * y) * (x - y) = (x + y)) :
  x + y ≥ 4 :=
begin

  apply (real.sqrt (x * y) * (x - y) = (x + y)) → (x + y ≥ 4),
  assumption,
  apply (real.sqrt (x * y) * (x - y) = (x + y)) → (x + y ≥ 4),
  apply algebra_amgm_sqrtxymulxmyeqxpy_xpygeq4,
  exact h₀,
  exact h₁,
  exact h₂,

end

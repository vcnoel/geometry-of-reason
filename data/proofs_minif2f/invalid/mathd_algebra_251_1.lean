import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  have h₂ : 3 * x = 7,
  { rw [h₁, mul_div_cancel_left 7 x h₀] },
  have h₃ : x = 7 / 3,
  { rw [eq_div_iff_mul_eq h₂] },
  exact h₃.symm

end

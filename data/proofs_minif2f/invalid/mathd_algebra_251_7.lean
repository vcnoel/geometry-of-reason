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

  have h₂ := (h₁ * x) * x,
  have h₃ : 3 * x + 1 = 7,
  { rw [h₂, h₁, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
    ring },
  have h₄ : x = 2,
  { rw [h₃, sub_eq_iff_eq_sub, sub_eq_zero, mul_eq_zero, ne.def, eq_comm, h₀],
    exact mul_ne_zero (ne_of_gt (half_pos zero_lt_three)) three_ne_zero },
  exact h₄,

end

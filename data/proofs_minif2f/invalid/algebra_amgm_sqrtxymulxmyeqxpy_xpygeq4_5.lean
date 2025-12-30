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

  have h₃ : (x + y) * (x - y) = (x * y),
  by {rw [h₂], simp},
  have h₄ : (x - y) > 0,
  by {rw h₁, exact (lt_of_lt_of_le h₀.1 h₀.2).ne },
  have h₅ : (x + y) * (x - y) = (x * y) > 0,
  by {rw h₃, exact mul_pos h₀.1 h₄ },
  have h₆ : (x + y) > 0,
  by {rw h₅, exact pos_of_mul_pos_left h₄ h₀.1 },
  have h₇ : (x + y) * (x - y) = (x * y) > 0,
  by {rw h₃, exact mul_pos h₀.1 h₄ },
  have h₈ : (x + y) ^ 2 = ((x + y) * (x + y)) = (x + y) * ((x + y)),
  by {rw [pow_two], simp },
  have h₉ : (x +
end

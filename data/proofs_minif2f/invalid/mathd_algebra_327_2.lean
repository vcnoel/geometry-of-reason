import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_327
  (a : ℝ)
  (h₀ : 1 / 5 * abs (9 + 2 * a) < 1) :
  -7 < a ∧ a < -2 :=
begin

  have h₁ := abs_lt_of_pos_mul_lt_one (abs_pos (9 + 2 * a)) h₀,
  have h₂ : abs (9 + 2 * a) = 11,
  { rw [abs_eq, abs_eq, abs_eq] },
  have h₃ : 9 + 2 * a = -11,
  { rw [abs_eq, abs_eq] },
  have h₄ : a = -20,
  { rw [h₃, add_left_cancel (-2)] },
  have h₅ : -7 < a ∧ a < -2,
  { split,
    { rw [h₄],
      exact lt_neg_two },
    { rw [h₄],
      exact neg_two_lt } },
  exact h₅

end

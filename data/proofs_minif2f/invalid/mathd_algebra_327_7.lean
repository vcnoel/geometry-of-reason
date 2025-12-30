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

  have h₁ : abs (9 + 2 * a) < 25,
  by {
    calc abs (9 + 2 * a) < 5 * abs (2 * a)
      : by { rw abs_mul; exact abs_mul_le_abs_mul_right a 2 }
   ... ≤ 5 * 2 * abs a
      : by { apply mul_le_mul_left; exact abs_le_abs a }
   ... = 10 * abs a,
    exact h₀,
  },
  have h₂ : 0 < abs a,
  by {
    calc 0 < 1 / 5 * abs (9 + 2 * a)
      : by { apply mul_pos_left; exact h₀ }
   ... = abs (1 / 5 * (9 + 2 * a))
      : by { rw abs_mul }
   ... ≤ abs a
      : by { apply abs_le_abs },
  },
  have h₃ : 0 < 7,
  by { apply gt_zero },
  have h₄ : 0 < 2,
  by { apply gt_zero },
  have h₅ : 0 < -7,
  by { apply neg_pos },
  have h₆
end

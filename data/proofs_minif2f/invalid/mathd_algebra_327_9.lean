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

  -- 1 / 5 * abs (9 + 2 * a) < 1
  have h₁ : 0 < 1 / 5,
  from by {
    norm_num,
    exact one_pos,
  },

  -- 1 / 5 * abs (9 + 2 * a) < 1
  have h₂ : abs (9 + 2 * a) < 5,
  from mul_lt_mul h₀ h₁ (abs_pos (9 + 2 * a)),

  -- 1 / 5 * abs (9 + 2 * a) < 1
  have h₃ : -5 < 9 + 2 * a ∧ 9 + 2 * a < 5,
  from abs_lt h₂,

  -- 1 / 5 * abs (9 + 2 * a) < 1
  have h₄ : -5 < 9 + 2 * a,
  from and_left h₃,

  -- 1 / 5 * abs (9 + 2 * a) < 1
  have h₅ : 9 + 2 * a < 5,
  from and_right h₃,

 
end

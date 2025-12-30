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

  -- 1. y = x^2 - 6x + 13
  have h₁ : y = (x - 3)^2 + 4,
    by {rw [h₀, pow_two_sub_two_mul_x_plus_one, pow_two],
        rw [add_right_neg, neg_neg]};

  -- 2. (x - 3)^2 ≥ 0
  have h₂ : (x - 3)^2 ≥ 0,
    by {rw pow_two_nonneg};

  -- 3. (x - 3)^2 ≥ 0 --> (x - 3)^2 + 4 ≥ 4
  have h₃ : (x - 3)^2 + 4 ≥ 4,
    by {apply add_mono, assumption};

  -- 4. (x - 3)^2 + 4 ≥ 4 --> y ≥ 4
  have h₄ : y ≥ 4,
    by {rw [h₁], assumption};

  -- 5. y ≥ 4
  show y ≥ 4,
    by {assumption};

end

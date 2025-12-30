import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intros x hx,
  have h1 : 0 < real.sqrt 2 := sqrt_pos (0 : ℝ),
  have h2 : 0 < 1 / (2 * x) := div_pos one_pos (mul_pos (zero_lt_two) hx),
  have h3 : 0 < 2 - x - 1 / (2 * x) := sub_pos (two_pos h2 hx),
  have h4 : 2 - real.sqrt 2 = 2 - 1 - real.sqrt 2 + 1 := add_sub_cancel_left (2 - real.sqrt 2) 1,
  have h5 : 2 - real.sqrt 2 = (2 - real.sqrt 2) + 0 := add_zero (2 - real.sqrt 2),
  have h6 : 2 - real.sqrt 2 = 1 + (1 - real.sqrt 2) := add_comm 1 (1 - real.sqrt 2) (2 - real.sqrt 2),
  have h7 : 2 - real.sqrt 2 ≥ 1 + (1 - real.sqrt 2) := le_add_of_nonneg_left (1 - real.sqrt 2) 1 (le_of_lt h1
end

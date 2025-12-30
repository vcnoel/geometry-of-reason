import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_433
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * real.sqrt (2 * x - 7) - 8) :
  f 8 = 1 :=
begin

  -- f 8 = 3 * real.sqrt (2 * 8 - 7) - 8
  exact
  calc
    f 8 = 3 * real.sqrt (2 * 8 - 7) - 8 : by {rw [h₀, mul_sub, real.sqrt_two]}
 .. exact (3 * (real.sqrt 7 - 3)) - 8
 .. exact (3 * real.sqrt 7) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 .. exact 3 * 7^(1/2) - 9
 ..
end

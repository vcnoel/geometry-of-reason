import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p9
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 6 - f 2 = 12) :
  f 12 - f 2 = 30 :=
begin

  calc f 12 - f 2
  = (f 12 - f 6) + (f 6 - f 2)
  : by {rw [add_sub_cancel_left]}
 ... = (f 12 - f 6) + (f 6 - f 2)
  : by {rw [h₁]}
 ... = (a * 12 + b - (a * 6 + b)) + (a * 6 + b - (a * 2 + b))
  : by {rw [h₀, h₀, h₀]}
 ... = (12 * a - 6 * a) + (6 * a - 2 * a)
  : by {rw [add_sub_cancel_left, add_sub_cancel_left]}
 ... = (6 * a) + (4 * a)
  : by {rw [mul_sub, mul_sub]}
 ... = 10 * a
  : by {rw [add_mul]}
 ... = 10 * 3
  : by {rw [h₁, h₁]}
 ... = 30
  : by {rw [mul_three]}

end

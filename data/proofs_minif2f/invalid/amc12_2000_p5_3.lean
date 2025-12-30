import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p5
  (x p : ℝ)
  (h₀ : x < 2)
  (h₁ : abs (x - 2) = p) :
  x - p = 2 - 2 * p :=
begin

  have h₂ : x - p = 2 - 2 * p,
  from calc
    x - p = 2 - 2 * p :
      by rw [← two_mul x, two_mul_two, sub_eq_add_neg, add_sub_assoc, h₁, add_zero]
 ,
  exact h₂

end

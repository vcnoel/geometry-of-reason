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

  have h₂ : f 6 = a * 6 + b,
  { apply h₀,
    exact 6 },
  have h₃ : f 2 = a * 2 + b,
  { apply h₀,
    exact 2 },
  calc
    f 12 - f 2 = (a * 12 + b) - (a * 2 + b) :
      by { apply h₀, exact 12 } - by { apply h₀, exact 2 }
   ... = a * 12 - a * 2 :
      by { apply add_right_cancel, exact sub_add b b }
   ... = a * (12 - 2) :
      by { apply mul_sub_left, exact a }
   ... = a * 10 :
      by { apply sub_add, exact 12 - 2 }
   ... = 10 * a :
      by { apply mul_comm, exact a }
   ... = 10 * (f 6 - f 2) / 6 :
      by { apply mul_comm, exact a } * by { apply div_eq_mul_inv, exact 6 } * by { apply h₁ }
   ... = 10 * 12 / 6
end

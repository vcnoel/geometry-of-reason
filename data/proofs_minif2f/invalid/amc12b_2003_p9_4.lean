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

  calc
    f 12 - f 2 = (f 12 - f 6) + (f 6 - f 2),
      by {rw [add_sub_cancel_left, add_sub_cancel_left]},
    (f 12 - f 6) + (f 6 - f 2) = (f 6 - f 2) + (f 12 - f 6),
      by {rw add_comm},
    (f 6 - f 2) + (f 12 - f 6) = f 12 - f 2 + f 6 - f 6,
      by {rw add_assoc},
    f 12 - f 2 + f 6 - f 6 = f 12 - f 2,
      by {rw add_zero},
    f 12 - f 2 = 30,
      by {rw h₁, rw h₁, rw h₁, rw h₁},

end

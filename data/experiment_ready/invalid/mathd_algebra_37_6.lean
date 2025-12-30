import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  have h₂ : 2 * x = 38,
  from calc
    2 * x = 3 * x + x - y : by {rw [add_sub_cancel_left, h₁, h₀]}
   ... = 3 * x + (7 - 3 * x) : by {rw h₁, rw h₀}
   ... = 38 : by {ring},

  have h₃ : x = 19,
  from calc
    x = (2 * x) / 2 : by {rw h₂, ring}
   ... = 38 / 2 : by {ring}
   ... = 19 : by {ring},

  have h₄ : y = -12,
  from calc
    y = 7 - x : by {rw h₀}
   ... = 7 - 19 : by {rw h₃, ring}
   ... = -12 : by {ring},

  calc
    x^2 - y^2 = (x + y) * (x - y) : by {rw [add_sub_cancel_left, mul_comm]}
   ... = (7) * (19 - (-12)) : by {rw [h₀, h�
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  have h₃ : (x + y)^2 = x^2 + 2 * x * y + y^2,
  by {simp only [add_mul, add_assoc], },
  have h₄ : (x + y)^2 = x^2 + y^2 + 2 * x * y,
  by {rw [h₃, add_assoc, add_mul], },
  have h₅ : x^2 + y^2 = (x + y)^2 - 2 * x * y,
  by {rw [h₄, add_assoc, add_mul], },
  have h₆ : (x + y)^2 = 71^2,
  by {rw [h₁, add_assoc, add_mul, add_mul, add_mul, add_mul], },
  have h₇ : (x + y)^2 = 5041,
  by {rw [h₆], },
  have h₈ : x^2 + y^2 = 5041 - 2 * x * y,
  by {rw [h₅, h₇], },
  have h₉ : x^2 * y + x * y^2 = 880,

end

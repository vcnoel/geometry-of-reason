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

  -- We are given two equations
  --   x * y + x + y = 71
  --   x^2 * y + x * y^2 = 880
  -- and we want to find x^2 + y^2.
  -- Let's start by subtracting the second equation from the first equation
  -- to eliminate x * y
  have h₃ : (x + y) * (x * y - 1) = 71 - 880,
  { rw [sub_eq_add_neg, mul_sub, add_sub_assoc, sub_sub_cancel_left],
    rw [h₁, h₂],
    simp only [add_sub_cancel_left, mul_one] },
  -- Now we have (x + y) * (x * y - 1) = -809
  -- Now we want to find the greatest common divisor of (x + y) and (x * y - 1)
  -- We can use the Euclidean algorithm to do this
  have h₄ : gcd (x + y) (x * y - 1) = 1,
  { apply gcd_of_dvd_of_dvd,
    -- We can use the fact that (x +
end

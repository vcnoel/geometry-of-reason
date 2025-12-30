import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2015_p10
  (x y : ℤ)
  (h₀ : 0 < y)
  (h₁ : y < x)
  (h₂ : x + y + (x * y) = 80) :
  x = 26 :=
begin

  -- Solve for x using algebraic manipulation
  have h₃ : x * (x + y + (x * y)) = 80 * x,
  { rw [h₂, mul_add, mul_comm x y, add_assoc, add_mul] },
  have h₄ : (x * x) + (x * y) + (x * y) = 80 * x,
  { rw [h₃, add_assoc, add_mul] },
  have h₅ : (x * x) + (2 * x * y) = 80 * x,
  { rw [add_assoc, add_mul] },
  have h₆ : x * x + (2 * x * y) = (80 * x),
  { rw [mul_comm, mul_comm 2 x] },
  have h₇ : (x * x) + (2 * x * y) = 80 * x,
  { rw [h₆] },
  have h₈ : (x * x) = (80 * x) - (2 * x * y),
  { rw [sub_eq_add_neg, neg_mul, neg_mul, add_comm, mul_comm 2 x] },
 
end

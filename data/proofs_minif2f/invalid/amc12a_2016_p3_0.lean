import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2016_p3
  (f : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ y ≠ 0, f x y = x - y * int.floor (x / y)) :
  f (3 / 8) (-(2 / 5)) = -(1 / 40) :=
begin

  -- Step 1: Apply the definition of f to the given inputs
  have h₁ := h₀ (3 / 8) (-(2 / 5)),
  -- Step 2: Simplify the expression using the definition of f
  rw h₁,
  -- Step 3: Simplify the expression further
  rw [div_neg, neg_div, neg_div, mul_neg, neg_mul, neg_sub],
  -- Step 4: Simplify the expression using the definition of floor
  rw [floor_div_neg, floor_div_neg, floor_div_neg],
  -- Step 5: Simplify the expression further
  ring,
  -- Step 6: Simplify the expression further
  ring,
  -- Step 7: Simplify the expression further
  ring,
  -- Step 8: Simplify the expression further
  ring,
  -- Step 9: Simplify the expression further
  ring,
  -- Step 10: Simplify the expression further
  ring,
  -- Step 11: Simplify the expression further
  ring,
  -- Step 12: Simplify the expression further
  ring,
  -- Step 13: Simplify the expression further
  ring,

end

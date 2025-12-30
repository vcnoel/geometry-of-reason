import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_126
  (x y : ℝ)
  (h₀ : 2 * 3 = x - 9)
  (h₁ : 2 * (-5) = y + 1) :
  x = 15 ∧ y = -11 :=
begin

  -- Step 1: Use the first equation to express x in terms of a constant.
  rw h₀ at x,
  -- Step 2: Solve for x using the expression obtained in Step 1.
  solve [x = 15] at x,
  -- Step 3: Use the second equation to express y in terms of a constant.
  rw h₁ at y,
  -- Step 4: Solve for y using the expression obtained in Step 3.
  solve [-y = -12] at y,
  -- Step 5: Use the results from Steps 2 and 4 to prove the theorem.
  exact and.intro rfl rfl,

end

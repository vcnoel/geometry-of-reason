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

  rw [h₀, h₁] at *,
  -- We now have the equations 6 = x - 9 and -10 = y + 1.
  -- We can add 9 to both sides of the first equation to get x = 15.
  rw [add_right, add_right] at h₀,
  rw [add_right, add_right] at h₁,
  -- Now we can solve for y by adding 1 to both sides of the second equation.
  rw [add_right, add_right] at h₁,
  -- Now we can solve for y by subtracting 1 from both sides of the equation.
  rw [sub_right, sub_right] at h₁,
  -- Now we have y = -12.
  -- Now we can solve for x by adding 9 to both sides of the equation.
  rw [add_right, add_right] at h₀,
  -- Now we have x = 15.
  split,
  { exact h₀ },
  { exact h₁ },

end

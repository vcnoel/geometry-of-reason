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

  -- Split the problem into two sub-problems
  have h₂ : x = 15,
  { -- Use the first equation to solve for x
    rw h₀,
    -- Simplify the expression
    ring,
  },
  have h₃ : y = -11,
  { -- Use the second equation to solve for y
    rw h₁,
    -- Simplify the expression
    ring,
  },
  -- Combine the two sub-problems
  exact (h₂, h₃),

end

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

  -- We have a system of equations:
  --   x * y + x + y = 71
  --   x^2 * y + x * y^2 = 880
  -- To solve this system, we can use the method of elimination.
  -- First, let's rewrite the first equation as:
  --   x * y + x + y = 71
  --   (x + 1) * (y + 1) = 72
  -- This is equivalent to the original equation, but it's easier to work with.
  have h₃ : (x + 1) * (y + 1) = 72,
  {
    rw [add_assoc, add_comm x 1, add_assoc, add_comm y 1, add_assoc],
    exact h₁,
  },

  -- Now, let's rewrite the second equation as:
  --   x^2 * y + x * y^2 = 880
  --   y * (x^2 + x * y) = 880
  -- This is equivalent to the original equation, but it's easier to work with.
  have h₄ : y * (x^2 + x *
end

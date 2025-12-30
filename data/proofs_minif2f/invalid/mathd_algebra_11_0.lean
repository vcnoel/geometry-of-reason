import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  -- Step 1: Multiply both sides of the equation by (a - b)
  have h₃ : (4 * a + 3 * b) = 5 * (a - 2 * b),
  { rw h₂ },
  -- Step 2: Expand the right-hand side of the equation
  have h₄ : 4 * a + 3 * b = 5 * a - 10 * b,
  { rw h₃ },
  -- Step 3: Rearrange the equation to isolate the variable a
  have h₅ : 4 * a - 5 * a = 10 * b - 3 * b,
  { rw h₄ },
  -- Step 4: Simplify the equation
  have h₆ : - a = 7 * b,
  { rw h₅ },
  -- Step 5: Multiply both sides of the equation by -1
  have h₇ : a = - 7 * b,
  { rw h₆ },
  -- Step 6: Substitute the value of a into the original equation
  have h₈ : (a + 11 * b) / (a - b) = (- 7
end

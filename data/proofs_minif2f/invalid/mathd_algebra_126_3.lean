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

  -- Step 1: Use the given equations to find x and y
  have h₂ : x = 15, from eq.subst h₀ (2 * 3),
  have h₃ : y = -11, from eq.subst h₁ (2 * (-5)),

  -- Step 2: Combine the results to get the final answer
  exact (h₂, h₃)

end

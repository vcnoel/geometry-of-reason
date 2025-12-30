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

  -- First, we'll use the first equation to find x.
  have h₂ := h₀.add (9 * 2),
  -- Now, we can solve for x.
  have h₃ := h₂.solve,
  -- Now, we'll use the second equation to find y.
  have h₄ := h₁.add (1 * (-5)),
  -- Now, we can solve for y.
  have h₅ := h₄.solve,
  -- Now we have x and y.
  exact ⟨h₃, h₅⟩

end

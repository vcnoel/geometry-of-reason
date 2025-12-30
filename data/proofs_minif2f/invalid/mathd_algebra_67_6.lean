import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_67
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = 5 * x + 3)
  (h₁ : ∀ x, g x = x^2 - 2) :
  g (f (-1)) = 2 :=
begin

  -- We know that f(-1) = 5*(-1) + 3 = -2.
  have h₂ : f (-1) = 5*(-1) + 3,
  { rw h₀,
    simp },
  -- Now we can plug this value into g.
  have h₃ : g (f (-1)) = g (-2),
  { rw h₂ },
  -- We know that g(-2) = (-2)^2 - 2 = 2.
  have h₄ : g (-2) = 2,
  { rw h₁,
    simp },
  -- Therefore, g(f(-1)) = 2.
  show g (f (-1)) = 2,
  { rw h₃,
    rw h₄ }

end

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

  have h₂ : f (-1) = 2,
  { apply h₀,
    simp },
  have h₃ : g (2) = 2^2 - 2,
  { apply h₁,
    simp },
  have h₄ : g (2) = 4 - 2,
  { apply h₃ },
  have h₅ : g (2) = 2,
  { apply h₄ },
  exact h₅,

end

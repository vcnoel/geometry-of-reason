import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_132
  (x : ℝ)
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = x + 2)
  (h₁ : ∀ x, g x = x^2)
  (h₂ : f (g x) = g (f x)) :
  x = - 1/2 :=
begin

  -- 1. Apply the definition of f to both sides of the equation
  have h₃ : f (g x) = g (f x),
  { rw [h₀, h₁, h₀, h₁] },
  -- 2. Simplify the equation
  have h₄ : g (f x) = (f x)^2,
  { rw h₁ },
  -- 3. Apply the definition of f to both sides of the equation
  have h₅ : g (f x) = (x + 2)^2,
  { rw h₀ },
  -- 4. Simplify the equation
  have h₆ : (x + 2)^2 = x^2 + 4x + 4,
  { rw pow_two },
  -- 5. Equate the two expressions
  have h₇ : x^2 + 4x + 4 = (x + 2)^2,
  { rw h₆ },
  -- 6. Subtract x^2 from both sides
  have h₈ : 4x + 4 = (x + 2)^2 - x^2,
  { rw h₇ },

end

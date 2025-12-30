import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_282
  (f : ℝ → ℝ)
  (h₀ : ∀ x, (¬ irrational x) → f x = abs (int.floor x))
  (h₁ : ∀ x, (irrational x) → f x = (int.ceil x)^2) :
  f (8^(1/3)) + f (-real.pi) + f (real.sqrt 50) + f (9/2) = 79 :=
begin

  -- We can use the definition of f on irrational numbers to rewrite f (8^(1/3)).
  have h₂ : f (8^(1/3)) = (int.ceil (8^(1/3)))^2,
  { apply h₁; simp; exact irrational_of_real (8^(1/3)) },

  -- Similarly, we can rewrite f (-real.pi) using the definition of f on irrational numbers.
  have h₃ : f (-real.pi) = (int.ceil (-real.pi))^2,
  { apply h₁; simp; exact irrational_of_real (-real.pi) },

  -- We can rewrite f (real.sqrt 50) using the definition of f on irrational numbers.
  have h₄ : f (real.sqrt 50) = (int.ceil (real.sqrt 50))^2,
  { apply h₁; simp; exact irrational_of_real (real.sqrt 50) },

  -- We can rewrite f (9/2) using the definition of f on rational numbers.
  have h₅ : f (9/2) = abs (int.floor (9/2)),
  { apply h₀; simp; exact ¬irrational (9/2) },

  -- We
end

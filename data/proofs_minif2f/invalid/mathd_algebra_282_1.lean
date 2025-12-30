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

  -- Using the given properties of f
  have h₂ : f (8^(1/3)) = abs (int.floor (8^(1/3))) := h₀ _ (irrational_or_rational.not_irrational _),
  have h₃ : f (-real.pi) = (int.ceil (-real.pi))^2 := h₁ _ (irrational_or_rational.is_irrational _),
  have h₄ : f (real.sqrt 50) = (int.ceil (real.sqrt 50))^2 := h₁ _ (irrational_or_rational.is_irrational _),
  have h₅ : f (9/2) = abs (int.floor (9/2)) := h₀ _ (irrational_or_rational.not_irrational _),

  -- Evaluating the expressions
  have h₆ : f (8^(1/3)) = 2 := by rw h₂; ring,
  have h₇ : f (-real.pi) = 10 := by rw h₃; ring,
  have h₈ : f (real.sqrt 50) = 25 := by rw h₄; ring,
  have h₉ : f (9/
end

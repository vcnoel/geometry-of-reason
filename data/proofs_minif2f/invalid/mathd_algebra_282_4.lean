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

  have h₂ := h₀ (8^(1/3)) (irrational_or_rational.is_irrational (8^(1/3))),
  have h₃ := h₁ (-real.pi) (irrational_or_rational.is_irrational (-real.pi)),
  have h₄ := h₀ (real.sqrt 50) (irrational_or_rational.is_irrational (real.sqrt 50)),
  have h₅ := h₁ (9/2) (irrational_or_rational.is_irrational (9/2)),
  have h₆ := h₂ + h₃ + h₄ + h₅,
  exact h₆,

end

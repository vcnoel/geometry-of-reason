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

  have h₂ : f (8^(1/3)) = abs (int.floor (8^(1/3))) := h₀ (8^(1/3)) (irrational_or_real (8^(1/3))),
  have h₃ : f (-real.pi) = (int.ceil (-real.pi))^2 := h₁ (-real.pi) (irrational_or_real (-real.pi)),
  have h₄ : f (real.sqrt 50) = (int.ceil (real.sqrt 50))^2 := h₁ (real.sqrt 50) (irrational_or_real (real.sqrt 50)),
  have h₅ : f (9/2) = abs (int.floor (9/2)) := h₀ (9/2) (irrational_or_real (9/2)),
  have h₆ : f (8^(1/3)) = 2 := by { rw h₂, norm_num },
  have h₇ : f (-real.pi) = 4 := by { rw h₃, norm_num },
  have h₈ : f (real.sqrt 50) = 25 := by { rw h₄, norm_num },
  have h₉ : f (
end

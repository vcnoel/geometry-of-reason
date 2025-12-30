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

  have h₂ := h₀ (8^(1/3)) (neg_not_irrational (8^(1/3))),
  have h₃ := h₁ (-real.pi) (irrational_pi),
  have h₄ := h₀ (real.sqrt 50) (neg_not_irrational (real.sqrt 50)),
  have h₅ := h₁ (9/2) (neg_not_irrational (9/2)),
  have h₆ := h₀ (8^(1/3)) (neg_not_irrational (8^(1/3))),
  have h₇ := h₁ (-real.pi) (irrational_pi),
  have h₈ := h₀ (real.sqrt 50) (neg_not_irrational (real.sqrt 50)),
  have h₉ := h₁ (9/2) (neg_not_irrational (9/2)),
  have h₁₀ := h₀ (8^(1/3)) (neg_not_irrational (8^(1/3))),
  have h₁₁ := h₁ (-real.pi) (irrational_pi),
  have h₁₂ := h₀ (real.sqrt 50) (neg_not_irrational
end

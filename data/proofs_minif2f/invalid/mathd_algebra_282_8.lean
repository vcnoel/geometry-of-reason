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

  have h₂ := h₁ 8^(1/3) (irrational_or_rational.2 (irrational_pos.2 (pow_pos real_pos (1/3)))),
  have h₃ := h₁ (-real.pi) (irrational_or_rational.2 (irrational_pos.2 real_pi_pos)),
  have h₄ := h₁ (real.sqrt 50) (irrational_or_rational.2 (irrational_pos.2 sqrt_pos)),
  have h₅ := h₀ (9/2) (rational_or_irrational.1 (rational_pos.1 (half_pos real_pos))),
  have h₆ := h₁ 8^(1/3) (irrational_or_rational.2 (irrational_pos.2 (pow_pos real_pos (1/3)))),
  have h₇ := h₁ (-real.pi) (irrational_or_rational.2 (irrational_pos.2 real_pi_pos)),
  have h₈ := h₁ (real.sqrt 50) (irrational_or_rational.2 (irrational_pos.2 sqrt_pos)),
  have h₉ := h₀ (9
end

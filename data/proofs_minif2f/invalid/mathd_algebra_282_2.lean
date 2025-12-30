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

  -- We know that 8^(1/3) is irrational.
  have h₂ : irrational (8^(1/3)),
  { intro h₃,
    have h₄ : (8^(1/3))^3 = 8,
    { rw pow_three,
      simp },
    have h₅ : (8^(1/3))^3 = 2^3,
    { rw h₄,
      refl },
    have h₆ : (8^(1/3))^3 = (2^3)^(1/3),
    { rw h₅,
      refl },
    have h₇ : (8^(1/3))^3 = (2^3)^(1/3),
    { rw h₆,
      refl },
    have h₈ : (8^(1/3))^3 = 2,
    { rw h₇,
      simp },
    have h₉ : (8^(1/3))^3 = 2,
    { rw h₈,
      refl },
    have h₁₀ : (8^(1/3))^3 = 2,
    { rw h₉,
      refl },
    have h₁₁ : (8^(1/
end

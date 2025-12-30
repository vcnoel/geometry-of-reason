import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_28
  (c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x^2 + 5 * x + c)
  (h₁ : ∃ x, f x ≤ 0) :
  c ≤ 25/8 :=
begin

  -- By the first hypothesis, we know that f(x) = 2x^2 + 5x + c for all x.
  -- We will prove that the discriminant of the quadratic equation is greater than 0.
  have h₂ : f 0 = c,
    by {rw [h₀, x^2, x^0, add_zero, mul_zero, mul_one], simp},
  have h₃ : f 1 = 2 + 5 + c,
    by {rw [h₀, x^2, x^0, add_zero, mul_zero, mul_one], simp},
  have h₄ : f 2 = 8 + 10 + c,
    by {rw [h₀, x^2, x^0, add_zero, mul_zero, mul_one], simp},
  have h₅ : f 3 = 18 + 15 + c,
    by {rw [h₀, x^2, x^0, add_zero, mul_zero, mul_one], simp},
  have h₆ : f 4 = 32 + 20 + c,
    by {rw [h₀, x^2, x^0, add_zero
end

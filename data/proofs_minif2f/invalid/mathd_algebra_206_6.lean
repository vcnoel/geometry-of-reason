import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_206
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 + a * x + b)
  (h₁ : 2 * a ≠ b)
  (h₂ : f (2 * a) = 0)
  (h₃ : f b = 0) :
  a + b = -1 :=
begin

  have h₄ : f (2 * a - b) = 0,
  { have h₅ : f (2 * a - b) = (2 * a - b)^2 + a * (2 * a - b) + b,
    { convert h₀ (2 * a - b) using 2,
      rw [pow_sub 2 (2 * a) b, add_sub, mul_sub, add_sub] },
    have h₆ : (2 * a - b)^2 + a * (2 * a - b) + b = (2 * a - b)^2 + 2 * a * (2 * a - b) + b,
    { rw [add_comm, mul_comm (2 * a) (2 * a - b)] },
    have h₇ : (2 * a - b)^2 + 2 * a * (2 * a - b) + b = (2 * a - b)^2 + 2 * a * (2 * a) - 2 * a * b + b,
    { rw [mul_sub, mul_comm (2 * a) (2 * a)] },
    have h₈ : (2 *
end

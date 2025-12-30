import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  -- 1. Calculate the value of (a - b)
  let c : ℝ := a - b,

  -- 2. Multiply both sides of the equation by c
  have h₃ : (4 * a + 3 * b) / c = 5 * c,
  by {
    rw [h₂],
    rw [mul_comm 5 c],
  },

  -- 3. Multiply both sides of the equation by c again
  have h₄ : 4 * a + 3 * b = 5 * c^2,
  by {
    rw [h₃],
    rw [mul_comm 5 c^2],
  },

  -- 4. Move 4 * a to the right-hand side
  have h₅ : 3 * b = 5 * c^2 - 4 * a,
  by {
    rw [sub_eq_add_neg, add_comm],
    rw [h₄],
  },

  -- 5. Multiply both sides of the equation by b
  have h₆ : 3 * b^2 = 5 * b * c^2 - 4 * a * b,
  by {
    rw [mul_comm 3
end

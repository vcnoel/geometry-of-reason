import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p9
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 6 - f 2 = 12) :
  f 12 - f 2 = 30 :=
begin

  -- Since f is linear, we have f 6 = 4 a + b and f 2 = 2 a + b
  let f_6 := 4 * a + b,
  let f_2 := 2 * a + b,

  -- We know that f 6 - f 2 = 12, so 4 a + b - 2 a - b = 12
  have h₂ : f_6 - f_2 = 2 * a := by {rw [f_6, f_2], rw h₁},

  -- This means that 2 a = 12, so a = 6
  have h₃ : a = 6 := by {rw [two_mul, eq_comm], exact h₂},

  -- Therefore, f 12 = 12 a + b and f 2 = 2 a + b
  let f_12 := 12 * a + b,
  let f_12' := 12 * 6 + b,

  -- We have f 12 - f 2 = 12 a + b - 2 a - b
  have h₄ : f_12 - f_2 = 10 *
end

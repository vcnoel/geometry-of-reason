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

  -- Step 1: Define f 12 and f 2 using the given equation.
  let f_12 := a * 12 + b,
  let f_2 := a * 2 + b,

  -- Step 2: Substitute f 12 and f 2 into the equation f 6 - f 2 = 12.
  have h₂ := h₁,
  rw [f_12, f_2] at h₂,

  -- Step 3: Simplify the equation.
  have h₃ := h₂,
  rw [mul_add, mul_add] at h₃,

  -- Step 4: Factor out the common term.
  have h₄ := h₃,
  rw [add_add_assoc, add_comm, add_assoc] at h₄,

  -- Step 5: Simplify the equation.
  have h₅ := h₄,
  rw [mul_one, add_zero] at h₅,

  -- Step 6: Substitute f 12 and f 2 into the equation f 12 - f 2 = 30.
  have h₆ := h₅,
  rw [f_12, f_2] at h₆,


end

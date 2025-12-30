import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p5
  (a b : ℝ)
  (h₀ : real.logb 8 a + real.logb 4 (b^2) = 5)
  (h₁ : real.logb 8 b + real.logb 4 (a^2) = 7) :
  a * b = 512 :=
begin

  -- logb 8 a + logb 4 (b^2) = 5
  -- => logb 8 a = 5 - logb 4 (b^2)
  -- => logb 8 a = 5 - 2 * logb 2 (b^2)
  -- => logb 8 a = 5 - 2 * 2 * logb 2 b
  -- => logb 8 a = 5 - 4 * logb 2 b
  -- => logb 8 a = 5 - 4 * (logb 2 b + 1)
  -- => logb 8 a = 1 - 4 * logb 2 b

  have h₂ : logb 8 a = 1 - 4 * (logb 2 b + 1),
    by { rw [← add_assoc, ← add_assoc, h₀, add_zero], ring },
  -- logb 8 a = 1 - 4 * (logb 2 b + 1)
  -- => logb 8 a = 1 - 4 * logb 2 b - 4
  -- =>
end

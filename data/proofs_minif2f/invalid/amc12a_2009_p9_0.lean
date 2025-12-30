import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin

  -- We can plug in x = 0 into the second equation to obtain c = f(0) = a * 0^2 + b * 0 + c = c.
  -- Hence, c = c, which is true for all real numbers c.
  have h₂ : c = c,
  { rw h₁,
    simp },
  -- We can plug in x = 1 into the second equation to obtain f(1) = a * 1^2 + b * 1 + c = a + b + c.
  -- We can plug in x = 4 into the first equation to obtain f(4) = 3 * 4^2 + 7 * 4 + 4 = 3 * 16 + 28 + 4 = 3 * 16 + 32 = 3 * 16 + 3 * 16 + 16 = 6 * 16 + 16 = 6 * 16 + 6 * 8 + 8 = 6 * (16 + 8) + 8 = 6 * 24 + 8 = 6 * 24 + 6 * 4 + 4 = 6 * (24 +
end

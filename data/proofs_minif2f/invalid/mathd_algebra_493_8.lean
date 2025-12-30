import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  -- Step 1: Use the definition of f to find f(4)
  let f_4 := f 4,
  have h₁ : f_4 = 4^2 - 4 * real.sqrt 4 + 1,
  by { rw h₀, simp only [pow_two, sqrt_two] },

  -- Step 2: Use the definition of f again to find f(f(4))
  have f_f_4 := f (f_4),
  have h₂ : f_f_4 = (4^2 - 4 * real.sqrt 4 + 1)^2 - 4 * real.sqrt (4^2 - 4 * real.sqrt 4 + 1) + 1,
  by { rw h₀ },

  -- Step 3: Simplify the expression for f(f(4))
  have h₃ : f_f_4 = (16 - 8 * 2 + 1)^2 - 4 * real.sqrt (16 - 8 * 2 + 1) + 1,
  by { rw h₁ },

  -- Step 4: Simplify further
  have h₄ : f_f_4 = 9^2 - 
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_67
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = 5 * x + 3)
  (h₁ : ∀ x, g x = x^2 - 2) :
  g (f (-1)) = 2 :=
begin

  -- Using h₀, we know that f(-1) = 5 * (-1) + 3
  have hf : f (-1) = 5 * (-1) + 3,
  { exact h₀ (-1) },
  -- Using hf, we know that f(-1) = -2
  have hf' : f (-1) = -2,
  { rw hf },
  -- Using h₁, we know that g(-2) = (-2)^2 - 2
  have hg : g (-2) = (-2)^2 - 2,
  { exact h₁ (-2) },
  -- Using hg, we know that g(-2) = 2
  have hg' : g (-2) = 2,
  { rw hg },
  -- Using hf', we know that f(-1) = -2
  have hf'' : f (-1) = -2,
  { exact hf' },
  -- Using hg', we know that g(f(-1)) = 2
  have hg'' : g (f (-1)) = 2,
  { exact hg' },
  -- Using hg'', we know that g(f(-1)) = 
end

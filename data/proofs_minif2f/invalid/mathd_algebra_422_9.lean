import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_422
  (x : ℝ)
  (σ : equiv ℝ ℝ)
  (h₀ : ∀ x, σ.1 x = 5 * x - 12)
  (h₁ : σ.1 (x + 1) = σ.2 x) :
  x = 47 / 24 :=
begin

  -- We can use the definition of the equiv relation to rewrite σ.1 x as σ.2^-1 (5 * x - 12)
  rw h₀ at h₁,
  -- Now we can substitute this expression into h₁
  rw h₀ at h₁,
  -- We can use the definition of the equiv relation to rewrite σ.1 (x + 1) as σ.2^-1 (5 * (x + 1) - 12)
  rw h₀ at h₁,
  -- Now we can substitute this expression into h₁
  rw h₀ at h₁,
  -- We can use the definition of the equiv relation to rewrite σ.2^-1 (5 * (x + 1) - 12) as σ.2^-1 (5 * x + 5 - 12)
  rw h₀ at h₁,
  -- Now we can substitute this expression into h₁
  rw h₀ at h₁,
  -- We can use the definition of the equiv relation to rewrite σ.2^-1 (5 * x + 5 - 12) as σ.2^-1 (5 * x - 7)
  rw h₀ at h₁,
 
end

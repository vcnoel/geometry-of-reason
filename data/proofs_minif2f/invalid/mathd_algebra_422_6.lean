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

  -- Prove x = 47 / 24 using h₀ and h₁
  rw h₀ at h₁,
  rw h₁,
  have h₂ : σ.1 x = 5 * σ.2 x - 12,
    by rw [h₀, h₁],
  have h₃ : σ.1 x = (5 * x - 12) = 5 * x - 12,
    by rw h₀,
  rw h₃ at h₂,
  have h₄ : σ.1 x = 5 * x - 12 = 5 * σ.2 x - 12,
    by rw h₂,
  have h₅ : σ.2 x = 5 * σ.2 x - 12,
    by rw h₄,
  have h₆ : 5 * σ.2 x = 5 * x,
    by rw [h₁, h₅],
  have h₇ : σ.2 x = x,
    by rw h₆,
  have h₈ : σ.1 x = 5 * σ.2 x - 12 = 5 * x - 12,
    by rw h₇,
 
end

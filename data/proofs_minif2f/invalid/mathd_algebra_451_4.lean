import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_451
  (σ : equiv ℝ ℝ)
  (h₀ : σ.2 (-15) = 0)
  (h₁ : σ.2 0 = 3)
  (h₂ : σ.2 3 = 9)
  (h₃ : σ.2 9 = 20) :
  σ.1 (σ.1 9) = 0 :=
begin

  -- Since σ.2 9 = 20, then σ.1 (σ.1 9) = σ.1 (σ.2 20)
  have h₄ : σ.1 (σ.1 9) = σ.1 (σ.2 20),
  { rw [σ.2 9, σ.2 20] },
  -- Since σ.2 20 = 0, then σ.1 (σ.2 20) = σ.1 0
  have h₅ : σ.1 (σ.2 20) = σ.1 0,
  { rw [σ.2 20] },
  -- By h₁, σ.2 0 = 3, and by h₀, σ.2 (-15) = 0, so we cannot determine σ.1 0.
  -- Thus, we cannot determine σ.1 (σ.1 9).
  -- We cannot conclude that σ.1 (σ.1 9) = 0.
  -- We cannot conclude that σ.1 (σ.1 9) ≠ 0.
  -- We cannot conclude that σ.1 (σ.1 9) =
end

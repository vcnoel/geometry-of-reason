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

  rw [← h₁, h₀, ← 24 * x, 24 * (5 * x - 12), 120 * x - 288],
  ring,
  field_simp [48 * 5],
  ring_nf,
  ring,
  rw [48 * 5 * x, 24 * 5 * x, 120 * x, 120 * x, 120 * x],
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,

end

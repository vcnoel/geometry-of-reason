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

  have h₂ : σ.1 (x + 1) = 5 * (x + 1) - 12,
  by rw [h₀, add_smul],
  have h₃ : σ.1 (x + 1) = 5 * x - 12 + 5 * 1,
  by rw [add_smul],
  have h₄ : σ.1 (x + 1) = 5 * x - 12 + 5,
  by rw [one_smul],
  have h₅ : σ.1 (x + 1) = 5 * x + 5 - 12,
  by rw [add_sub_cancel],
  have h₆ : σ.1 (x + 1) = 5 * x - 7,
  by rw [sub_sub_cancel],
  have h₇ : σ.1 (x + 1) = σ.2 x,
  by rw [h₁],
  have h₈ : 5 * x - 7 = σ.2 x,
  by rw [h₇],
  have h₉ : 5 * x - 7 = σ.2 x,
  by rw [
end

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

  have h₁' : σ.1 x = σ.2 (x + 1) - 1,
  { rw h₁, },
  have h₂ : σ.1 x = σ.2 x + 1,
  { rw h₁', },
  have h₃ : σ.1 x = 5 * σ.2 x,
  { rw h₀, },
  have h₄ : σ.1 x = 5 * (σ.2 x + 1) - 12,
  { rw h₂, },
  have h₅ : σ.1 x = 5 * σ.2 x + 5 - 12,
  { rw h₂, },
  have h₆ : σ.1 x = 5 * σ.2 x - 7,
  { rw h₅, },
  have h₇ : σ.1 x = 5 * σ.2 x - 7,
  { rw h₃, },
  have h₈ : σ.2 x = 7 / 5,
  { rw h₆, solve },
  have h₉ : σ.1 x = 5 * (7 / 5) - 7,

end

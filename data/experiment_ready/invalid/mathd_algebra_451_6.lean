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

  -- We know that σ.1 (σ.1 9) = σ.1 20
  have h₄ : σ.1 (σ.1 9) = σ.1 20,
  { have h₅ : σ.2 9 = σ.2 20,
    { have h₆ : σ.2 9 = 20,
      { exact h₃ },
      have h₇ : σ.2 20 = 20,
      { exact σ.1 20 },
      exact h₆.trans h₇ },
    have h₈ : σ.1 (σ.2 9) = σ.1 (σ.2 20),
    { exact σ.2_injective h₅ },
    have h₉ : σ.1 (σ.2 9) = σ.1 20,
    { exact σ.1 20 },
    have h₁₀ : σ.1 (σ.1 9) = σ.1 20,
    { exact h₈.trans h₉ },
    exact h₁₀ },

  -- We know that σ.1 20 = 0
  have h₁₁ : σ.1 20
end

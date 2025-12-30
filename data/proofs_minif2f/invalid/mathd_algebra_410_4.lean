import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ : y ≥ 0,
  by {
    have h₂ : x^2 - 6*x + 13 ≥ 0,
    by {
      have h₃ : x^2 - 6*x + 9 ≥ 0,
      by {
        have h₄ : x^2 - 6*x + 9 = (x - 3)^2,
        by {
          ring,
        },
        have h₅ : 0 ≤ (x - 3)^2,
        by {
          norm_num,
        },
        exact h₅,
      },
      have h₆ : x^2 - 6*x + 9 - 4 ≥ 0,
      by {
        have h₇ : x^2 - 6*x + 9 - 4 = (x^2 - 6*x + 9) - 4,
        by {
          ring,
        },
        have h₈ : (x^2 - 6*x + 9) - 4 ≥ 0,
        by {
          exact h₃,
        },
        exact h₇.symm ▸ h₈,
      },
      exact h₆,
    },
    exact h₂
end

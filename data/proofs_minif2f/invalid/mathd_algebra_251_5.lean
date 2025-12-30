import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  have h₂ : 3 * x + 1 = 7,
  by {
    rw h₁,
    conv in (3 + 1 / x) { mul x },
    conv in (7 / x) { mul x },
    simp,
  },
  have h₃ : 3 * x = 6,
  by {
    rw h₂,
    simp,
  },
  have h₄ : x = 2,
  by {
    have h₅ : 3 * x = 6,
    by {
      exact h₃,
    },
    have h₆ : 6 / 3 = 2,
    by {
      simp,
    },
    have h₇ : 3 * x = 3 * 2,
    by {
      exact h₅,
    },
    have h₈ : x = 2,
    by {
      exact h₇,
      exact h₆,
      exact h₆,
    },
    exact h₈,
  },
  exact h₄,

end

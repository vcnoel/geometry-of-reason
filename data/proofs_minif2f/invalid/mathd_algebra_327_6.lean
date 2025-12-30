import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_327
  (a : ℝ)
  (h₀ : 1 / 5 * abs (9 + 2 * a) < 1) :
  -7 < a ∧ a < -2 :=
begin

  have h₁ : 9 + 2 * a < 0,
  by {
    have h₂ : 9 + 2 * a < 5 * (9 + 2 * a),
    by {
      linarith,
    },
    have h₃ : 9 + 2 * a < 5 * (9 + 2 * a) / 5,
    by {
      linarith,
    },
    have h₄ : 9 + 2 * a < (9 + 2 * a) + 1,
    by {
      linarith,
    },
    linarith,
  },
  have h₅ : -7 < a,
  by {
    have h₆ : 1 + 2 * a < 0,
    by {
      linarith,
    },
    have h₇ : 1 + 2 * a < 1 + 2 * a + 1,
    by {
      linarith,
    },
    linarith,
  },
  have h₈ : a < -2,
  by {
    have h₉ : 2 * a < -4,
    by {
      linarith,
    },
    have h₁₀ : 2 *
end

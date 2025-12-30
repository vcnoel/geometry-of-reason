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

  have h₁ : -7 < a,
  { calc -7 < a
            : by linarith
            },
  have h₂ : a < -2,
  { calc a < -2
            : by linarith
            },
  show -7 < a ∧ a < -2,
  by {split,
      exact h₁,
      exact h₂},

end

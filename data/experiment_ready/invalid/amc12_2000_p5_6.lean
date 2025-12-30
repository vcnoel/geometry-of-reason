import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p5
  (x p : ℝ)
  (h₀ : x < 2)
  (h₁ : abs (x - 2) = p) :
  x - p = 2 - 2 * p :=
begin

  have h₂ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (x - p)),
  have h₃ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (2 - (2 * p))),
  have h₄ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (2 - 2 * p)),
  have h₅ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (2 - 2 * p)),
  have h₆ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (2 - 2 * p)),
  have h₇ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (2 - 2 * p)),
  have h₈ := abs_sub (2 * p) (2 * p) - (abs_sub (2 * p) (2 - 2 * p)),
  have h₉ := abs_sub (2 * p) (2 *
end

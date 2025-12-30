import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2011_p18
  (x y : ℝ)
  (h₀ : abs (x + y) + abs (x - y) = 2) :
  x^2 - 6 * x + y^2 ≤ 9 :=
begin

  have h₁ : abs (x + y) = abs (x - y),
  from by {
    by_contradiction h₂,
    by {
      have h₃ : abs (x + y) ≠ abs (x - y),
      from h₂,
      have h₄ : abs (x + y) + abs (x - y) ≠ 2,
      from h₃,
      exact h₀ h₄,
    },
  },
  have h₅ : x + y = x - y,
  from by {
    by_contradiction h₆,
    by {
      have h₇ : x + y ≠ x - y,
      from h₆,
      have h₈ : abs (x + y) ≠ abs (x - y),
      from h₇,
      exact h₁ h₈,
    },
  },
  have h₉ : y = 0,
  from by {
    by_contradiction h₁₀,
    by {
      have h₁₁ : y ≠ 0,
      from h₁₀,
      have h₁₂ : x + y = x - y,
      from h₅,
      have h₁₃ : 2 *
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_101
  (x : ℝ)
  (h₀ : x^2 - 5 * x - 4 ≤ 10) :
  x ≥ -2 ∧ x ≤ 7 :=
begin

  have h₁ : x^2 - 5 * x - 4 ≤ 10,
  from h₀,
  have h₂ : (x - 7) * (x + 2) ≤ 10,
  from h₁,
  have h₃ : x^2 - 5 * x - 4 = (x - 7) * (x + 2),
  by ring,
  have h₄ : (x - 7) * (x + 2) = 0 ∨ (x - 7) * (x + 2) ≤ 10,
  by or_split,
  have h₅ : (x - 7) * (x + 2) ≤ 10,
  from h₂,
  have h₆ : (x - 7) * (x + 2) = 0 ∨ (x - 7) * (x + 2) ≤ 10,
  from h₄,
  have h₇ : (x - 7) * (x + 2) = 0,
  from h₃,
  have h₈ : (x - 7) * (x + 2) = 0,

end

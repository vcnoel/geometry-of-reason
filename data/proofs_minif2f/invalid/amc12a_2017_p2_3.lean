import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p2
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x + y = 4 * (x * y)) :
  1 / x + 1 / y = 4 :=
begin

  have h₃ : x * y ≠ 0,
  { contradiction h₀ h₁ h₂ },
  have h₄ : x ≠ y,
  { contradiction h₀ h₁ h₂ },
  have h₅ : x ≠ 0 ∧ y ≠ 0,
  { assumption },
  have h₆ : 1 / x + 1 / y = (x + y) / (x * y),
  { ring },
  have h₇ : (x + y) / (x * y) = 4,
  { rw [h₂, h₃, h₄, h₆] },
  exact h₇,

end

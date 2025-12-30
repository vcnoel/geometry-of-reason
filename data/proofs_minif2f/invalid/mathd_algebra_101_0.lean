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

  have h₁ : x^2 - 5 * x - 14 ≤ 0,
  { apply le_trans,
    { apply h₀ },
    { apply le_of_eq,
      calc x^2 - 5 * x - 14 = (x - 7) * (x + 2) : by ring },
    { apply mul_nonpos },
    { apply le_add_right },
    { apply le_add_right },
    { apply le_zero },
    { apply mul_nonpos },
    { apply le_add_right },
    { apply le_add_right },
    { apply le_zero },
    { apply mul_nonpos } },
  have h₂ : x ≤ 7,
  { apply le_of_eq,
    calc x^2 - 5 * x - 14 = (x - 7) * (x + 2) : by ring },
  have h₃ : x ≥ -2,
  { apply le_of_eq,
    calc x^2 - 5 * x - 14 = (x - 7) * (x + 2) : by ring },
  exact ⟨h₃, h₂⟩,

end

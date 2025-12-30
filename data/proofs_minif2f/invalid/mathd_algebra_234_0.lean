import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_234
  (d : ℝ)
  (h₀ : 27 / 125 * d = 9 / 25) :
  3 / 5 * d^3 = 25 / 9 :=
begin

  have h₁ : 3 / 5 * d^3 = 27 / 125 * d * d^2,
  by {
    calc 3 / 5 * d^3
      = 27 / 125 * d * d^2
      : rfl
  },
  have h₂ : 27 / 125 * d * d^2 = 9 / 25 * d^2,
  by {
    calc 27 / 125 * d * d^2
      = 9 / 25 * d^2
      : (mul_div_cancel _ (125 * d) h₀).symm
  },
  have h₃ : 9 / 25 * d^2 = 9 / 25 * d^2,
  by {
    calc 9 / 25 * d^2
      = 9 / 25 * d^2
      : rfl
  },
  have h₄ : 9 / 25 * d^2 = 9 / 9 * d^2,
  by {
    calc 9 / 25 * d^2
      = 9 / 9 * d^2
      : (div_div_cancel _
end

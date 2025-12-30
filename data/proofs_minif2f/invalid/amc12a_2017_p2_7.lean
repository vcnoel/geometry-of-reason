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
  by_contradiction h₃',
  { have h₄ : x + y = 0,
    by rw [h₂, mul_comm, mul_comm, mul_assoc, mul_assoc, h₃'],
    have h₅ : x = -y,
    by rw [h₄, sub_eq_neg_add],
    have h₆ : 1 / x = 1 / (-y),
    by rw [h₅],
    have h₇ : 1 / x + 1 / y = 1 / (-y) + 1 / y,
    by rw [h₆],
    have h₈ : 1 / x + 1 / y = 0,
    by rw [h₇, add_div],
    have h₉ : 1 / x + 1 / y ≠ 4,
    by contradiction,
    have h₁₀ : False,
    by rw [h₉, h₂],
    exact h₁₀,
  },
  have h₁₁ : x * y ≠ 0,
  by_contradiction h₁₁',
  { have h₁₂ : x + y = 0
end

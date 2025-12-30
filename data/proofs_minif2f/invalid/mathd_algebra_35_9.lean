import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_35
  (p q : ℝ → ℝ)
  (h₀ : ∀ x, p x = 2 - x^2)
  (h₁ : ∀ x ≠ 0, q x = 6 / x) :
  p (q 2) = -7 :=
begin

  have h₂ : q 2 ≠ 0,
  { rw [h₁, two_ne_zero],
    exact zero_ne_one },
  have h₃ : p (q 2) = 2 - (q 2)^2,
  { rw h₀ },
  have h₄ : q 2 = 3,
  { rw [h₁, two_ne_zero, div_eq_mul_inv],
    exact mul_comm _ _ },
  have h₅ : (q 2)^2 = 9,
  { rw h₄, exact pow_two },
  have h₆ : 2 - (q 2)^2 = 2 - 9,
  { rw h₅ },
  have h₇ : 2 - 9 = -7,
  { ring },
  exact h₃.trans h₆.trans h₇

end

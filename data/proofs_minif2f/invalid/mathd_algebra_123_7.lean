import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_123
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 20)
  (h₂ : a = 3 * b) :
  a - b = 10 :=
begin

  rw [sub_eq_add_neg] at h₁,
  rw [sub_eq_add_neg] at h₂,
  have h₃ : 3 * b + b = 20,
  from h₂.symm ▸ h₁,
  have h₄ : b * 4 = 20,
  from h₃ ▸ mul_comm b 4,
  have h₅ : b = 5,
  from h₄ ▸ eq_iff_mul_eq_mul_right.mp (eq_mul_one_iff_eq.mp (div_eq_iff (ne_of_gt h₀.1) (ne_of_gt h₀.2))),
  have h₆ : a = 15,
  from h₂ ▸ h₅,
  have h₇ : a - b = 10,
  from h₆ ▸ h₅ ▸ sub_eq_add_neg.mp (eq_sub_sub_right h₅),
  exact h₇,

end

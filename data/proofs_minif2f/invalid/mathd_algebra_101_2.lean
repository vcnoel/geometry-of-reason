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

  have h₂ : x^2 - 5 * x - 14 ≤ 0,
    by { rw [sub_nonneg, sub_nonneg], linarith [h₁] },

  have h₃ : (x - 7) * (x + 2) ≤ 0,
    by { rw [mul_nonneg, mul_nonpos], linarith [h₂] },

  have h₄ : (x - 7) * (x + 2) ≥ 0 ∨ (x - 7) * (x + 2) ≤ 0,
    by { exact or.intro_left _ h₃ },

  have h₅ : (x - 7) * (x + 2) ≥ 0,
    by { exact or.elim_right h₄ },

  have h₆ : x ≥ -2 ∧ x ≤ 7,
    by { rw [mul_nonpos, mul_nonpos], linarith [h₅] },

  exact h₆,

end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1988_p6
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : (a * b + 1) ∣ (a^2 + b^2)) :
  ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1) :=
begin

  have h₂ : a^2 + b^2 = (a * b + 1) * (a^2 + b^2) / (a * b + 1),
    by rw [div_mul_cancel (a * b + 1) (pos_iff_ne_zero.mpr (and.elim_left h₀))],
  have h₃ : a^2 + b^2 ∣ (a * b + 1) * (a^2 + b^2) / (a * b + 1),
    by simp [h₂],
  have h₄ : (a * b + 1) * (a^2 + b^2) / (a * b + 1) = (a^2 + b^2),
    by {simp [h₂], },
  have h₅ : ∃ x : ℕ, (x^2 : ℝ) = (a^2 + b^2) / (a * b + 1),
    by {simp [h₄], },
  exact h₅,

end

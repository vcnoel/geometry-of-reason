import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_393
  (σ : equiv ℝ ℝ)
  (h₀ : ∀ x, σ.1 x = 4 * x^3 + 1) :
  σ.2 33 = 2 :=
begin

  have h₁ : σ.2 33 = 4 * (33^3) + 1 := by { rw [h₀, eq.symm σ.1, 33^3, 33^3], refl },
  have h₂ : 4 * 33^3 = 2 * 33^3 := by { rw [mul_two, mul_comm, eq.symm mul_assoc, mul_assoc], refl },
  have h₃ : 2 * 33^3 = 2 * (33^3) := by { rw [mul_two], refl },
  have h₄ : 4 * 33^3 + 1 = 2 * 33^3 + 1 := by { rw [h₂, h₃], refl },
  have h₅ : 4 * 33^3 + 1 = 2 * 33^3 + 1 := by { rw [h₄], refl },
  have h₆ : σ.2 33 = 2 * 33^3 + 1 := by { rw [h₅, h₁], refl },
  have h₇ : σ.2 33 = 2 * 33^3 +
end

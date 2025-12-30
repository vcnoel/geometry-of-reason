import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_437
  (x y : ℝ)
  (n : ℤ)
  (h₀ : x^3 = -45)
  (h₁ : y^3 = -101)
  (h₂ : x < n)
  (h₃ : ↑n < y) :
  n = -4 :=
begin

  rw [h₀, h₁] at h₂ h₃,
  have h₄ : x < -5 := by { rw [h₀], linarith },
  have h₅ : -5 < y := by { rw [h₁], linarith },
  have h₆ : n < -5 := by { rwa [h₂] },
  have h₇ : -5 < n := by { rwa [h₃] },
  linarith,

end

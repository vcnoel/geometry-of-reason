import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_668
  (l r : zmod 7)
  (h₀ : l = (2 + 3)⁻¹)
  (h₁ : r = 2⁻¹ + 3⁻¹) :
  l - r = 1 :=
begin

  have h₂ : (2 + 3)⁻¹ = (5)⁻¹ := by { rw h₀ },
  have h₃ : (5)⁻¹ = (1) := by { rw minif2f_inverse },
  have h₄ : (2)⁻¹ + (3)⁻¹ = 6 := by { rw [h₁, minif2f_inverse, minif2f_inverse] },
  have h₅ : (1) - 6 = -5 := by { rw h₃, rw h₄ },
  rw h₂ at h₅,
  exact h₅,

end

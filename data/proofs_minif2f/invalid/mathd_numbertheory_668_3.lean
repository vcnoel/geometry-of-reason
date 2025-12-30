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

  have h₂ : l - r = (2 + 3)⁻¹ - (2⁻¹ + 3⁻¹),
  by { simp [h₀, h₁], },
  have h₃ : (2 + 3)⁻¹ - (2⁻¹ + 3⁻¹) = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹,
  by { simp only [add_sub_cancel_left], },
  have h₄ : (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ + 0,
  by { rw add_zero, },
  have h₅ : (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ + 0 = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ + (2 + 3)⁻¹ * 0,
  by { simp only [add_mul_cancel_left], },
  have h₆ : (2 + 3)
end

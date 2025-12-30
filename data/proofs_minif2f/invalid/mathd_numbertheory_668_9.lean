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

  calc
    l - r = ((2 + 3)⁻¹) - (2⁻¹ + 3⁻¹) : by {rw [h₀, h₁]}
   ... = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ : by {rw [add_sub_cancel_left]}
   ... = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ * (2 + 3)⁻¹ : by {rw [inv_add]}
   ... = ((2 + 3)⁻¹ * (2 + 3)⁻¹) - 2⁻¹ - 3⁻¹ : by {rw [mul_comm]}
   ... = (2 + 3)⁻² - 2⁻¹ - 3⁻¹ : by {rw [pow_two]}
   ... = 1 - 2⁻¹ - 3⁻¹ : by {rw [inv_pow_eq_recip]}
   ... = 1 - (2⁻¹ + 3⁻¹) : by {rw [add_sub_cancel_left]}
   ... = 1 - (
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_232
  (x y z : zmod 31)
  (h₀ : x = 3⁻¹)
  (h₁ : y = 5⁻¹)
  (h₂ : z = (x + y)⁻¹) :
  z = 29 :=
begin

  apply minif2f_apply_left (h₂) (x + y) (3⁻¹) (5⁻¹) (h₁);
  apply minif2f_apply_right (h₂) (x + y) (3⁻¹) (5⁻¹) (h₁);
  apply minif2f_apply_right (h₂) (x + y) (3⁻¹) (5⁻¹) (h₁);
  apply minif2f_apply_right (h₂) (x + y) (3⁻¹) (5⁻¹) (h₁);
  
end

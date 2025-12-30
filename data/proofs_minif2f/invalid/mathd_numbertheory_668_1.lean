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
    l - r = (2 + 3)⁻¹ - (2⁻¹ + 3⁻¹) : by rw [h₀, h₁]
     ... = (2 + 3)⁻¹ - 2⁻¹ - 3⁻¹ : by abel
     ... = ((2 + 3) * 2 * 3 - 2 * 3 - 2 * 3) / ((2 + 3) * 2 * 3) : by zmod_inject
     ... = (6 * 2 * 3 - 6) / (6 * 2 * 3) : by zmod_inject
     ... = (12 * 3 - 6) / (6 * 2 * 3) : by zmod_inject
     ... = (36 - 6) / (6 * 2 * 3) : by zmod_inject
     ... = 30 / (6 * 2 * 3) : by zmod_inject
     ... = 5 / (2 * 3) : by zmod_inject
     ... = 5 / (6) :
end

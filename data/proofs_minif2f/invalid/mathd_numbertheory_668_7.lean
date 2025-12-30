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

  -- We can start by rewriting the expression l - r
  rw [h₀, h₁],
  -- Now, we can rewrite the expression (2 + 3)⁻¹ - (2⁻¹ + 3⁻¹) as
  -- ((2 + 3)⁻¹ - 2⁻¹) + ((2 + 3)⁻¹ - 3⁻¹)
  rw [add_sub, add_sub],
  -- Next, we can rewrite the expression ((2 + 3)⁻¹ - 2⁻¹) as
  -- (2 + 3)⁻¹ - 2⁻¹ = (2 + 3)⁻¹ - 2⁻¹ * (2 + 3)⁻¹ * (2 + 3)
  -- = (2 + 3)⁻¹ - (2 * (2 + 3))⁻¹
  rw [add_inv_cancel_left, mul_inv_cancel_left],
  -- Now, we can rewrite the expression ((2 + 3)⁻¹ - 3⁻¹) as
  -- (2 + 3)⁻¹ - 3
end

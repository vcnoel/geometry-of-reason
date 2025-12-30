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

  -- We are given that l = (2 + 3)⁻¹ and r = 2⁻¹ + 3⁻¹.
  have h₂ : l = 1⁻¹,
  { rw h₀,
    -- We can simplify (2 + 3)⁻¹ as (5)⁻¹.
    rw add_inv_eq_inv_add,
    -- Then we can simplify (5)⁻¹ as 5⁻¹.
    rw inv_add,
    -- Now, we can simplify 5⁻¹ as 5⁻¹.
    rw inv_pow,
    -- Finally, we can simplify 5⁻¹ as 1⁻¹.
    rw pow_one,
    -- Now, we can simplify 1⁻¹ as 1⁻¹.
    rw inv_one },
  have h₃ : r = 1⁻¹ + 1⁻¹,
  { rw h₁,
    -- We can simplify 2⁻¹ + 3⁻¹ as 5⁻¹ + 5⁻¹.
    rw add_inv_eq_inv_add,
    -- Then we can simplify 5⁻¹ + 5⁻¹
end

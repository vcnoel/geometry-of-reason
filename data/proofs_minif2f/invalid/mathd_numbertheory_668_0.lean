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

  -- Simplify the expression on the left-hand side
  rw h₀,
  rw h₁,

  -- Rewrite the expression using the definition of the modular inverse
  rw zmod_inv_eq,

  -- Simplify the expression
  simp,

  -- Rewrite the expression using the definition of modular arithmetic
  rw zmod_sub,

  -- Simplify the expression
  simp,

  -- Apply the distributive property
  rw add_sub_cancel,

  -- Simplify the expression
  simp,

  -- Apply the multiplicative inverse property of modular arithmetic
  rw zmod_inv_mul,

  -- Simplify the expression
  simp,

  -- Apply the distributive property
  rw add_sub_cancel,

  -- Simplify the expression
  simp,

  -- Apply the multiplicative inverse property of modular arithmetic
  rw zmod_inv_mul,

  -- Simplify the expression
  simp,

  -- Rewrite the expression using the definition of modular arithmetic
  rw zmod_sub,

  -- Simplify the expression
  simp,

  -- Apply the distributive property
  rw add_sub_cancel,

  -- Simplify the expression
  simp,

  -- Apply the multiplicative inverse property of modular arithmetic
  rw zmod_inv_mul
end

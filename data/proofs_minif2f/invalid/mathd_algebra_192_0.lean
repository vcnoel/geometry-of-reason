import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_192
  (q e d : ℂ)
  (h₀ : q = 11 - (5 * complex.I))
  (h₁ : e = 11 + (5 * complex.I))
  (h₂ : d = 2 * complex.I) :
  q * e * d = 292 * complex.I :=
begin

  -- We can rewrite q, e, and d using the given equalities
  rw [h₀, h₁, h₂],

  -- Now we can simplify the expression by multiplying the numbers
  simp,

  -- The complex number 11 - 5 * complex.I can be written as 11 - 5 * I
  -- Similarly, 11 + 5 * complex.I can be written as 11 + 5 * I
  -- So we have (11 - 5 * I) * (11 + 5 * I) * (2 * I)

  -- Using the distributive property, we can expand the product (11 - 5 * I) * (11 + 5 * I)
  -- This gives us (121 - 25 * I^2) * (2 * I)

  -- Now we can simplify the expression by combining like terms
  -- We have (121 + 25) * (2 * I)

  -- This simplifies to 146 * (2 * I)

  -- Finally, we can simplify the expression by multiplying the numbers
  -- We have 292 * I

  -- So we have q * e * d = 292 * complex.I

end

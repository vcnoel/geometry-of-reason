import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1991_p1
  (x y : ℕ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : x * y + (x + y) = 71)
  (h₂ : x^2 * y + x * y^2 = 880) :
  x^2 + y^2 = 146 :=
begin

  -- 1. Apply the factorization of the first equation.
  have h₃ := factorize (x * y + (x + y)) = 71,
  { -- 1.1. Expand the left-hand side.
    rw add_comm at h₁,
    -- 1.2. Factorize the left-hand side.
    have h₄ := factorize (x * y + x + y) = 71,
    { -- 1.2.1. Factorize the left-hand side.
      have h₅ := factorize (x * y + x + y) = (x + 1) * (y + 1),
      { -- 1.2.1. Expand the right-hand side.
        have h₆ := expand ((x + 1) * (y + 1)) = x * y + x + y + 1,
        { -- 1.2.1. Simplify the right-hand side.
          have h₇ := simplify (x * y + x + y + 1) = x * y + x + y + 1,
          { -- 1.2.1. Factorize the left-hand side.
            have h
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_119
  (d e : ℝ)
  (h₀ : 2 * d = 17 * e - 8)
  (h₁ : 2 * e = d - 9) :
  e = 2 :=
begin

  -- Step 1: Solve the first equation for d
  have h₂ : d = (17 * e - 8) / 2,
  from h₀,

  -- Step 2: Substitute d in the second equation
  have h₃ : 2 * e = ((17 * e - 8) / 2) - 9,
  from h₁,

  -- Step 3: Multiply both sides by 2
  have h₄ : 4 * e = 17 * e - 8 - 18,
  from h₃,

  -- Step 4: Add 18 to both sides
  have h₅ : 4 * e + 18 = 17 * e - 8,
  from h₄,

  -- Step 5: Subtract 17e from both sides
  have h₆ : 18 - 17 * e = -8,
  from h₅,

  -- Step 6: Add 8 to both sides
  have h₇ : 18 - 17 * e + 8 = 0,
  from h₆,

  -- Step 7: Combine like terms
  have h₈ : 26
end

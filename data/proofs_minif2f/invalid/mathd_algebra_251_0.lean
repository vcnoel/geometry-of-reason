import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  -- We are given that x ≠ 0.
  have h₂ : x ≠ 0,
    from h₀,

  -- We are given that 3 + 1 / x = 7 / x.
  have h₃ : 3 + 1 / x = 7 / x,
    from h₁,

  -- Multiply both sides by x.
  have h₄ : 3x + 1 = 7,
    by {
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides by x.
      rw mul_one,
      -- Multiply both sides
end

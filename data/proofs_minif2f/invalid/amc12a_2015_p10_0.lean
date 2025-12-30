import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2015_p10
  (x y : ℤ)
  (h₀ : 0 < y)
  (h₁ : y < x)
  (h₂ : x + y + (x * y) = 80) :
  x = 26 :=
begin

  -- We first solve for x using the quadratic formula
  let a := 1,
  let b := y,
  let c := -80,
  let d := b * b - 4 * a * c,
  let Δ := sqrt d,
  let x₁ := (-b + Δ) / (2 * a),
  let x₂ := (-b - Δ) / (2 * a),

  -- We want to show that x is equal to 26
  have h₃ : x₁ > 0,
  { -- The discriminant is positive
    have h₄ : d > 0,
    { -- We solve for d
      have h₅ : b * b - 4 * a * c = y * y - 4 * (1) * (-80),
      { refl },
      have h₆ : y * y - 4 * (1) * (-80) = y * y + 320,
      { ring },
      have h₇ : y * y + 320 = (y + 16) * (y - 16) + 320,
      { ring },
      have h₈ : (y + 16) * (y -
end

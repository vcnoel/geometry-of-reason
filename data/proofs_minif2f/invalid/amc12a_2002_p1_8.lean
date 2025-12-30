import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p1
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6))
  (h₁ : fintype (f ⁻¹' {0})) :
  ∑ y in (f⁻¹' {0}).to_finset, y = 7 / 2 :=
begin

  -- We know f x = 0 has 3 distinct roots.
  have h₂ : fintype (f ⁻¹' {0}) := h₁,

  -- We also know f x = 0 has roots at x = -1/2, 3, and 7.
  have h₃ : {x | f x = 0} = {x | x = -1/2 ∨ x = 3 ∨ x = 7},
  by {
    refine set.ext (λ x hx, _),
    -- We know that if f x = 0, then f x = 0.
    have hx₀ : f x = 0 := hx,

    -- We know that if f x = 0, then f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6).
    have hx₁ : f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6) := h₀ x,

    -- We know that (2 * x + 3) * (x - 4) + (
end

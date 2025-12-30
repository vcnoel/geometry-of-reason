import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_13
  (a b : ℝ)
  (h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 :=
begin

  -- Step 1: Plug in x = 3 into the equation and solve for a
  have h₁ : a = -6,
  { have h₂ : (3 - 3) ≠ 0 ∧ (3 - 5) ≠ 0,
    by { split, { apply sub_ne_zero, {refl}, apply sub_ne_zero, {refl}}},
    have h₃ : 4 * 3 / (3^2 - 8 * 3 + 15) = a / (3 - 3) + b / (3 - 5),
    by { apply h₀, assumption},
    have h₄ : 4 * 3 / (3^2 - 8 * 3 + 15) = b / (3 - 5),
    by { apply eq_div_eq, { apply eq_add_eq, { refl, apply h₃}},
        apply eq_div_eq, {refl}},
    have h₅ : 12 / 0 = b / (3 - 5),
    by { apply h₄, refl},
    have h₆ : false,
    by { apply h₅, refl},
    have h₇ : a = -6
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2011_p18
  (x y : ℝ)
  (h₀ : abs (x + y) + abs (x - y) = 2) :
  x^2 - 6 * x + y^2 ≤ 9 :=
begin

  -- Assume the hypotheses.
  assume hx : x ∈ ℝ,
  assume hy : y ∈ ℝ,

  -- We can use the given condition to derive some useful facts.
  have h₁ : abs (x + y) = 3 ∧ abs (x - y) = 1,
  { apply eq_and_abs_eq_of_abs_eq,
    apply eq_and_abs_eq_of_abs_eq,
    apply h₀,
    apply h₀ },
  { have h₂ : x + y = 3 ∨ x + y = -3,
    { apply h₁.left },
    { have h₃ : x - y = 1 ∨ x - y = -1,
      { apply h₁.right },
      { have h₄ : x = 2 ∨ x = 1,
        { apply h₂,
          apply h₃ },
        { have h₅ : y = 1 ∨ y = 2,
          { apply h₃,
            apply h₂ },
          { have h₆ : y = 1 ∨ y = -1 ∨ y = 2 ∨ y = -2,
            { apply h₅ },
            { have h₇ : x = 2 ∨ x = 1 ∨ x = -
end

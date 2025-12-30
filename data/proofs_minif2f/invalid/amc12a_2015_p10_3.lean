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

  have h₃ : y * (y + 1) ≤ x * (x + 1),
  by
  { apply le_trans,
    { apply mul_nonneg,
      exact le_of_lt h₀, },
    { apply le_mul,
      { apply le_add_right,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add_left,
        apply add_nonneg,
        exact le_of_lt h₁, },
      { apply le_add
end

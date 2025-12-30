import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p8
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x ≠ y)
  (h₃ : x + 2 / x = y + 2 / y) :
  x * y = 2 :=
begin

  have h₄ : x * y ≠ 0,
    from ne_of_gt ((pow_pos h₀ 2) * (pow_pos h₁ 2)),
  have h₅ : (x + 2 / x) * (y + 2 / y) = (x + 2 / x) * y + (x + 2 / x) * (2 / y),
    by ring,
  have h₆ : (x + 2 / x) * (y + 2 / y) = (x + 2 / x) * y + (2 / y) * (x + 2 / x),
    by ring,
  have h₇ : (x + 2 / x) * (y + 2 / y) = y * (x + 2 / x) + (2 / y) * (x + 2 / x),
    by rw h₆,
  have h₈ : (x + 2 / x) * (y + 2 / y) = y * (x + 2 / x) + (2 / y) * (x + 2 / x),
    by rw h₇,
  have h
end

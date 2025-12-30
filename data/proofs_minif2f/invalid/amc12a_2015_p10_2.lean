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

  have h₃ : 0 < x := by linarith [h₁, h₀],
  have h₄ : 0 < x * y := by linarith [h₁, h₀],
  have h₅ : x + y + (x * y) = 80 → (x + 1) + y + ((x + 1) * y) = 80 + y + x + 1,
  by linarith,
  have h₆ : (x + 1) + y + ((x + 1) * y) = 80 + y + x + 1,
  by linarith [h₅, h₂],
  have h₇ : (x + 1) * y = 80 + y + x + 1 - (x + y),
  by linarith,
  have h₈ : (x + 1) * y = 81 + x,
  by linarith,
  have h₉ : x * y = 80 + y + x - (x + 1) * y,
  by linarith,
  have h₁₀ : x * y = 80 + y + x - (81 + x),

end

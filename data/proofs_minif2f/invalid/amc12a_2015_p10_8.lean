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

  have h₃ : x * y = 80 - x - y := by { rw h₂ },
  have h₄ : x * y = 80 - (x + y) := by { rw h₃ },
  have h₅ : x * y = (x + y) * (x + y) - (x + y) := by { rw h₄ },
  have h₆ : x * y = (x + y) * (x + y) - 80 + 80 - (x + y) := by { rw h₅ },
  have h₇ : x * y = (x + y) * (x + y) - 80 - (x + y) + 80 := by { rw h₆ },
  have h₈ : x * y = (x + y) * (x + y) - 80 - (x + y) + 80 - 1 + 1 := by { rw h₇ },
  have h₉ : x * y = ((x + y) * (x + y) - 80 - (x + y) + 80) - 1 + 1 := by { rw h
end

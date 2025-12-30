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

  have h₁ : (x + y)^2 = (x - y)^2 + 4 * x * y := by ring,
  have h₂ : abs (x + y) = abs (x - y) := by { rw h₀, exact id },
  have h₃ : (x + y)^2 = (x - y)^2 := by { rw h₁, rw h₂ },
  have h₄ : x^2 - 2 * x * y + y^2 = (x - y)^2 := by ring,
  have h₅ : x^2 - 2 * x * y + y^2 + 2 * x * y = x^2 + y^2 := by ring,
  have h₆ : x^2 + y^2 = (x + y)^2 - 2 * x * y := by ring,
  have h₇ : x^2 + y^2 = (x - y)^2 := by { rw h₃, rw h₆ },
  have h₈ : x^2 + y^2 = x^2 - 2 * x * y + y^2 := by { rw h₄, rw
end

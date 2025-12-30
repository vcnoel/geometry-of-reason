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

  have h₃ : 0 < x := by linarith,
  have h₄ : x < y := by linarith,
  have h₅ : y + x + (x * y) = 80,
  { rw h₂ },
  have h₆ : x * y + x + y = 80,
  { rw h₅ },
  have h₇ : x + y = 80 - (x * y),
  { rw h₆ },
  have h₈ : x * y < x + y := by linarith,
  have h₉ : 80 - (x * y) > 0 := by linarith,
  have h₁₀ : 0 < x + y := by linarith,
  have h₁₁ : 80 - (x * y) < x + y := by linarith,
  have h₁₂ : (x * y) < x + y := by linarith,
  have h₁₃ : (x * y) < 80 := by linarith,
  have h₁₄ : x < 80 / y := by linarith,
  have h₁₅ : x < 80 / y := by linarith
end

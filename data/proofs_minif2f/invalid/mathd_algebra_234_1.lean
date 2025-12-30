import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_234
  (d : ℝ)
  (h₀ : 27 / 125 * d = 9 / 25) :
  3 / 5 * d^3 = 25 / 9 :=
begin

  have h₁ : (27 / 125) * (125 / 125) = (27 / 125) * (125 / 125) := by ring,
  have h₂ : (27 / 125) * (125 / 125) = (27 * 125) / (125 * 125) := by ring,
  have h₃ : (27 * 125) / (125 * 125) = (27 * 5^3) / (5^3 * 5^3) := by ring,
  have h₄ : (27 * 5^3) / (5^3 * 5^3) = (3^3 * 5^3) / (5^3 * 5^3) := by ring,
  have h₅ : (3^3 * 5^3) / (5^3 * 5^3) = (3^3) / (5^3) := by ring,
  have h₆ : (3^3) / (5^3) = 27 / 125 := by ring,
  have h₇ : (3^3) / (5^3) = 27 /
end

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

  have h₁ : 27 = 3^3, by norm_num,
  have h₂ : 125 = 5^3, by norm_num,
  have h₃ : 9 = 3^2, by norm_num,
  have h₄ : 25 = 5^2, by norm_num,
  have h₅ : 27 / 125 = (3^3) / (5^3), by rw h₁ at h₂,
  have h₆ : (3^3) / (5^3) = (3/5)^3, by norm_num,
  have h₇ : 9 / 25 = (3^2) / (5^2), by rw h₃ at h₄,
  have h₈ : (3^2) / (5^2) = (3/5)^2, by norm_num,
  have h₉ : (3/5)^3 * d^3 = (3/5)^2 * (27/125) * d,
  by rw h₆ at h₅,
  have h₁₀ : (3/5)^2 * (27/125) * d = (3
end

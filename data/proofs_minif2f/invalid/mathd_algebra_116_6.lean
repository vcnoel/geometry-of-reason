import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_116
  (k x: ℝ)
  (h₀ : x = (13 - real.sqrt 131) / 4)
  (h₁ : 2 * x^2 - 13 * x + k = 0) :
  k = 19/4 :=
begin

  have h₂ : x = (13 - sqrt 131) / 4 := h₀,
  have h₃ : x^2 = (13 - sqrt 131) ^ 2 / 16 := (h₂ ^ 2),
  have h₄ : x^2 = (13 - sqrt 131) * (13 + sqrt 131) / 16 := (h₃),
  have h₅ : x^2 = 169/16 := (h₄),
  have h₆ : 2 * x^2 = 169/8 := (2 * h₅),
  have h₇ : 2 * x^2 = 169/8 := (h₆),
  have h₈ : 13 * x = (13 * (13 - sqrt 131)) / 4 := (13 * h₂),
  have h₉ : 13 * x = (169 - 13 * sqrt 131) / 4 := (h₈),
  have h₁₀ : 13 * x = (169 - 13 * sqrt 131) / 4 := (h₉),
  have h₁₁ : 2 * x^2 -
end

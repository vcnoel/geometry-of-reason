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

  have h₂ : x = (13 - real.sqrt 131) / 4 := h₀,
  have h₃ : 2 * x^2 - 13 * x + k = 0 := h₁,
  have h₄ : 131 = 169 - 38,
  have h₅ : 38 = 2 * 13 - 13,
  have h₆ : 169 = 13^2,
  have h₇ : 2 * x^2 - 13 * x + 19/4 = 0,
  { rw h₂,
    have h₈ : 2 * ((13 - real.sqrt 131) / 4)^2 - 13 * ((13 - real.sqrt 131) / 4) + 19/4 = 0,
    { rw h₃ },
    have h₉ : 2 * (169/16 - 13 * real.sqrt 131/4 + 131/16) - 13 * (13 - real.sqrt 131)/4 + 19/4 = 0,
    { rw h₂, rw h₆, rw h₄, rw h₅ },
    have h₁₀
end

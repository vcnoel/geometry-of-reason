import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  have h₂ : 3 * (x + y) = 3 * 7,
    by rw [h₀, mul_one],

  have h₃ : 3 * (x + y) = 21,
    by rw [h₂],

  have h₄ : 3 * x + 3 * y = 21,
    by rw [h₃],

  have h₅ : 3 * x + y = 45,
    by rw [h₁],

  have h₆ : 3 * x = 45 - y,
    by rw [h₅],

  have h₇ : 3 * x = 45 - y,
    by rw [h₆],

  have h₈ : 3 * x - y = 45 - y,
    by rw [h₇],

  have h₉ : 3 * x - y = 45,
    by rw [h₈],

  have h₁₀ : 3 * x - y = 45,
    by rw [h₉],

  have h₁₁ : 3 * x - y = 45,
    by rw [h₁₀],

  have h₁₂ : 
end

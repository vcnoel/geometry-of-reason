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

  have h₂ : (x - y) * (x + y) = x^2 - y^2,
  by { simp },
  have h₃ : (3 * x + y) - (x + y) = 2 * x,
  by { simp },
  have h₄ : (3 * x + y) - (x + y) = 45 - 7,
  by { rw [h₁, h₀] },
  have h₅ : 2 * x = 38,
  by { rw [h₃, h₄] },
  have h₆ : x = 19,
  by { linarith },
  have h₇ : y = 7 - x,
  by { rw [h₀] },
  have h₈ : y = -12,
  by { rw [h₇, h₆] },
  have h₉ : x^2 - y^2 = (19)^2 - (-12)^2,
  by { rw [h₆, h₈] },
  have h₁₀ : x^2 - y^2 = 361 - 144,
  by { simp },
  have h₁₁
end

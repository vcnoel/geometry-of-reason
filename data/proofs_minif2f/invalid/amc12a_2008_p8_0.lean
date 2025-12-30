import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  have h₃ : y^2 = 1/6 * 2 * (6 * y^2),
  by simp [h₂],
  have h₄ : y^2 = 1/6 * 2 * (6 * y^2),
  by rw [h₃],

  have h₅ : 1/6 * 2 * (6 * y^2) = 2/6 * (6 * y^2),
  by ring,

  have h₆ : 2/6 * (6 * y^2) = 1 * (6 * y^2),
  by ring,

  have h₇ : 1 * (6 * y^2) = (1 * 6) * y^2,
  by ring,

  have h₈ : (1 * 6) * y^2 = 6 * y^2,
  by ring,

  have h₉ : 6 * y^2 = 6 * (y^2),
  by ring,

  have h₁₀ : 6 * y^2 = 6 * (y^2),
  by rw [h₉],

  have h₁₁ : 6
end

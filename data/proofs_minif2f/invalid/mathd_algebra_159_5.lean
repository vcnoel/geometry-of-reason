import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_159
  (b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x^4 - 7 * x^3 + 2 * x^2 - b * x + 1)
  (h₁ : f 1 = 1) :
  b = -2 :=
begin

  have h₂ : f 1 = 3 * (1)^4 - 7 * (1)^3 + 2 * (1)^2 - b * (1) + 1,
  by simp [h₀, b],
  have h₃ : f 1 = 3 - 7 + 2 - b + 1,
  by simp [h₂],
  have h₄ : f 1 = -1 - b,
  by simp [h₃],
  have h₅ : 1 = -1 - b,
  by simp [h₁, h₄],
  have h₆ : -2 = -1 - b,
  by simp [h₅],
  have h₇ : -2 + 1 = -1 - b,
  by simp [h₆],
  have h₈ : -1 = -1 - b,
  by simp [h₇],
  have h₉ : -1 + 1 = -1 - b,
  by simp [h₈],
  have h₁₀ : 0 = -1 - b,
  by simp [h₉],
  have h₁₁ : 0 + 1 =
end

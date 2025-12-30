import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_206
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 + a * x + b)
  (h₁ : 2 * a ≠ b)
  (h₂ : f (2 * a) = 0)
  (h₃ : f b = 0) :
  a + b = -1 :=
begin

  have h₄ : f (2 * a) = 4 * a^2 + 4 * a^2 + 2 * a * b,
  by simp [h₀, (2 * a)^2, 2 * a * b],
  have h₅ : 4 * a^2 + 2 * a * b = 0,
  by rwa [h₂],
  have h₆ : 2 * a * b = -4 * a^2,
  by rwa [h₅],
  have h₇ : b = -2 * a,
  by rwa [h₆, div_eq_iff h₁],
  have h₈ : f b = b^2 + a * b + b,
  by simp [h₀, b^2, b * a, b],
  have h₉ : b^2 + a * b + b = 0,
  by rwa [h₃],
  have h₁₀ : b^2 + 2 * a * b + b = 0,
  by rwa [h₇],
  have h₁₁ : b * (b + 2 * a) = -b
end

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

  have h₄ := h₀ (2 * a),
  have h₅ := h₀ b,
  have h₆ : a ≠ 0, by linarith [h₁],
  have h₇ : (b - a) ≠ 0, by linarith [h₁],
  have h₈ : (b - a) * (2 * a) = b * (2 * a) - a * (2 * a),
    by ring,
  have h₉ : (b - a) * (2 * a) = 2 * a * b - 2 * a * a,
    by ring,
  have h₁₀ : (b - a) * (2 * a) = 2 * a * (b - a),
    by ring,
  have h₁₁ : f ((2 * a) + (b - a)) = f (2 * a) + f (b - a),
    by simp [f, h₀],
  have h₁₂ : f ((2 * a) + (b - a)) = 0 + f (b - a),
    by simp [h₂],
  have h₁₃ : f ((2 * a)
end

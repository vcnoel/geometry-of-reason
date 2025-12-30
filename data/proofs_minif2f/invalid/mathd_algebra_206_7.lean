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
  have h₆ := h₁,
  have h₇ := h₂,
  have h₈ := h₃,
  have h₉ : f (2 * a) = (2 * a)^2 + a * (2 * a) + b,
  { rw h₀ },
  have h₁₀ : f b = b^2 + a * b + b,
  { rw h₀ },
  have h₁₁ : (2 * a)^2 + a * (2 * a) + b = 0,
  { rw h₉ },
  have h₁₂ : b^2 + a * b + b = 0,
  { rw h₁₀ },
  have h₁₃ : 4 * a^2 + 2 * a^2 + b = 0,
  { rw h₁₁ },
  have h₁₄ : b^2 + a * b + b = 0,
  { rw h₁₂ },
  have h₁₅ : 6 * a^2 + b = 0,
  { rw h₁₃ },
 
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1996_p5
  (a b c r s t : ℝ)
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^3 + 3 * x^2 + 4 * x - 11)
  (h₁ : ∀ x, g x = x^3 + r * x^2 + s * x + t)
  (h₂ : f a = 0)
  (h₃ : f b = 0)
  (h₄ : f c = 0)
  (h₅ : g (a + b) = 0)
  (h₆ : g (b + c) = 0)
  (h₇ : g (c + a) = 0) :
  t = 23 :=
begin

  have h₈ : f (a + b) = 0,
  by simp [h₀, h₂, h₃],
  have h₉ : f (b + c) = 0,
  by simp [h₀, h₃, h₄],
  have h₁₀ : f (c + a) = 0,
  by simp [h₀, h₄, h₂],
  have h₁₁ : g (a + b + c) = 0,
  by simp [h₁, h₅, h₆, h₇],
  have h₁₂ : g (a + b) = (a + b)^3 + r * (a + b)^2 + s * (a + b) + t,
  by simp [h₁],
  have h₁₃ : g (b + c) = (b + c)^3 + r * (b + c)^2 + s * (b + c) + t,
  by simp [h₁],
  have h₁₄ : g (c + a) = (c + a)^3 + r * (c + a)^2 + s * (c + a) +
end

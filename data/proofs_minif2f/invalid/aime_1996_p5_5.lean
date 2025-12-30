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

  have h₈ : g a = 0,
  from h₁ a,

  have h₉ : g b = 0,
  from h₁ b,

  have h₁₀ : g c = 0,
  from h₁ c,

  have h₁₁ : g (a + b) = (a + b)^3 + r * (a + b)^2 + s * (a + b) + t,
  from h₁ (a + b),

  have h₁₂ : g (b + c) = (b + c)^3 + r * (b + c)^2 + s * (b + c) + t,
  from h₁ (b + c),

  have h₁₃ : g (c + a) = (c + a)^3 + r * (c + a)^2 + s * (c + a) + t,
  from h₁ (c + a),

  have h₁₄ : g (a + b) = g a + g b,
  from (h₈ + h₉).symm,

  have h₁₅ : g (b + c) = g b + g c,
  from (h
end

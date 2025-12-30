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

  -- The polynomial f has roots a, b, c
  have h₈ : (x - a) * (x - b) * (x - c) = x^3 + 3 * x^2 + 4 * x - 11,
  from by {
    apply congr_arg (x^3 + 3 * x^2 + 4 * x - 11),
    simp [h₀],
  },

  -- The polynomial f has roots a, b, c
  have h₉ : x^3 + 3 * x^2 + 4 * x - 11 = (x - a) * (x - b) * (x - c),
  from h₈.symm,

  -- The polynomial g has roots a + b, b + c, c + a
  have h₁₀ : (x - (a + b)) * (x - (b + c)) * (x - (c + a)) = x^3 + r * x^2 + s * x + t,
  from by {
    apply congr_arg (x^3 + r * x^2 + s * x + t),
    simp [h₁],
  },


end

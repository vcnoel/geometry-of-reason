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

  have h₈ : a + b + c ≠ 0,
  by rintro rfl; apply (h₅.trans (h₁ b)).symm; apply (h₂.trans (h₁ a)).symm;

  have h₉ : (a + b + c) * (g (a + b + c) - 3 * (a + b + c)) =
           (a + b + c) * ((a + b + c)^3 + r * (a + b + c)^2 + s * (a + b + c) + t -
                         3 * (a + b + c)),
  by ring;

  have h₁₀ : (a + b + c) * (g (a + b + c) - 3 * (a + b + c)) =
           (a + b + c) * (g (a + b + c) - 3 * (a + b + c) + (a + b + c) * (-1)),
  by ring;

  have h₁₁ : (a + b + c) * (g (a + b + c) - 3 * (a + b + c)) =
           (
end

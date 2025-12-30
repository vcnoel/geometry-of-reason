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

  -- Since f is a cubic polynomial, it can have at most three zeros.
  -- Since f(a) = f(b) = f(c) = 0, we conclude that f(x) = (x - a)(x - b)(x - c).
  have h₈ : f x = (x - a) * (x - b) * (x - c),
    from (eq_of_root _ h₀ _ h₂) * (eq_of_root _ h₀ _ h₃) * (eq_of_root _ h₀ _ h₄),

  -- Now we can expand the right-hand side of h₈.
  have h₉ : f x = x^3 - (a + b + c) * x^2 + (ab + bc + ca) * x - abc,
    from (expand _ (h₈ x) (x - a) (x - b) (x - c)),

  -- Since f(x) = g(x) for all x, we have g(x) = x^3 - (a + b + c) * x^2 + (ab + bc + ca) * x - abc.
  have h₁₀ : g x = x
end

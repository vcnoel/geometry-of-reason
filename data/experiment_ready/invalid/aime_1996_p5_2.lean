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

  -- rewrite the expression for g(a+b) in terms of f(a+b) and the other polynomial
  have h₈ : g (a + b) = (a + b)^3 + r * (a + b)^2 + s * (a + b) + t,
    by {rw [h₁, (pow3 _).symm, (pow2 _).symm, (pow1 _).symm]},
  -- rewrite the expression for f(a+b) in terms of f(a) and f(b)
  have h₉ : f (a + b) = f a + f b,
    by {rw [h₀, (pow3 _).symm, (pow2 _).symm, (pow1 _).symm, add_assoc, add_comm, add_assoc]},
  -- substitute the expression for f(a+b) into the expression for g(a+b)
  have h₁₀ : g (a + b) = f a + f b + r * (a + b)^2 + s * (a + b),
    by {rw [h₈, h₉, (pow2 _).symm, (pow1 _).symm, add
end

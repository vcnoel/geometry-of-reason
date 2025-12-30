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
  { rw h₀,
    simp only [add_pow, add_mul, add_comm],
    ring, },
  have h₉ : f (b + c) = 0,
  { rw h₀,
    simp only [add_pow, add_mul, add_comm],
    ring, },
  have h₁₀ : f (c + a) = 0,
  { rw h₀,
    simp only [add_pow, add_mul, add_comm],
    ring, },
  have h₁₁ : f a^3 + 3 * f a^2 + 4 * f a - 11 = 0,
  { rw h₀, },
  have h₁₂ : f a^3 + 3 * f a^2 + 4 * f a - 11 = 0,
  { rw h₂, },
  have h₁₃ : f a^3 + 3 * f a^2 + 4 * f a - 11 = 0,
  { rw h₃, },
  have h₁₄ : f a^3 + 3 * f a^2 + 4 * f a
end

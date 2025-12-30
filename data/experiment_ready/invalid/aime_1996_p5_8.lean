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

  -- f is a cubic function
  have h₈ : ∃ x, f x = 0,
    from ⟨a, h₂⟩,
  have h₉ : ∃ x, f x = 0,
    from ⟨b, h₃⟩,
  have h₁₀ : ∃ x, f x = 0,
    from ⟨c, h₄⟩,

  -- g is a cubic function
  have h₁₁ : ∃ x, g x = 0,
    from ⟨a + b, h₅⟩,
  have h₁₂ : ∃ x, g x = 0,
    from ⟨b + c, h₆⟩,
  have h₁₃ : ∃ x, g x = 0,
    from ⟨c + a, h₇⟩,

  -- g is a cubic function
  have h₁₄ : ∃ x, g x = 0,
    from ⟨a + b + c, h₁₄⟩,

  -- g is a cubic function
  have h₁₅ : g (a + b + c) = 0,
    from h₁₄,

  -- f is a cubic
end

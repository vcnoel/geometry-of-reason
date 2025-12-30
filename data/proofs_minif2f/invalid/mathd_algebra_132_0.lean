import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_132
  (x : ℝ)
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = x + 2)
  (h₁ : ∀ x, g x = x^2)
  (h₂ : f (g x) = g (f x)) :
  x = - 1/2 :=
begin

  -- 1/2
  have h₃ : f (g x) = g (f x),
  { simp only [h₀, h₁] },
  -- 2/2
  have h₄ : g (f x) = g (x + 2),
  { apply h₂ },
  -- 3/3
  have h₅ : g (x + 2) = (x + 2)^2,
  { simp only [h₁] },
  -- 4/4
  have h₆ : (x + 2)^2 = x^2 + 4x + 4,
  { ring },
  -- 5/5
  have h₇ : x^2 + 4x + 4 = g (x + 2),
  { apply h₄ },
  -- 6/6
  have h₈ : g (x + 2) = f (g x),
  { apply h₂ },
  -- 7/7
  have h₉ : f (g x) = g (f x),
  { apply h₃ },
  -- 8/8
  have h₁₀ : g (
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p9
  (f : ℝ → ℝ)
  (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x / y)
  (h₁ : f 500 = 3) : f 600 = 5 / 2 :=
begin

  have h₂ := h₀ 100 6,
  have h₃ := h₁ / 6,
  have h₄ := h₂ / 6,
  have h₅ := h₃ * h₄,
  have h₆ := h₅ * 100,
  exact h₆,

end

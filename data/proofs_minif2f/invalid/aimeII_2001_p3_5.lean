import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2001_p3
  (x : ℕ → ℤ)
  (h₀ : x 1 = 211)
  (h₂ : x 2 = 375)
  (h₃ : x 3 = 420)
  (h₄ : x 4 = 523)
  (h₆ : ∀ n ≥ 5, x n = x (n - 1) - x (n - 2) + x (n - 3) - x (n - 4)) :
  x 531 + x 753 + x 975 = 898 :=
begin

  -- x 5 = x 4 - x 3 + x 2 - x 1
  have h₅ : x 5 = x 4 - x 3 + x 2 - x 1 := h₆ 5,
  -- x 6 = x 5 - x 4 + x 3 - x 2
  have h₆' : x 6 = x 5 - x 4 + x 3 - x 2 := h₆ 6,
  -- x 7 = x 6 - x 5 + x 4 - x 3
  have h₇ : x 7 = x 6 - x 5 + x 4 - x 3 := h₆ 7,
  -- x 8 = x 7 - x 6 + x 5 - x 4
  have h₈ : x 8 = x 7 - x 6 + x 5 - x 4 := h₆ 8,
  -- x 9 = x 8 - x 7 + x 6 - x 5
  have h₉ : x 9 = x 8 - x 7
end

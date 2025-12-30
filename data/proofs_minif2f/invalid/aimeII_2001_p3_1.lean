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

  have h₅ : x 5 = x 4 - x 3 + x 2 - x 1,
  { apply h₆; assumption },
  have h₆ : x 6 = x 5 - x 4 + x 3 - x 2,
  { apply h₆; assumption },
  have h₇ : x 7 = x 6 - x 5 + x 4 - x 3,
  { apply h₆; assumption },
  have h₈ : x 8 = x 7 - x 6 + x 5 - x 4,
  { apply h₆; assumption },
  have h₉ : x 9 = x 8 - x 7 + x 6 - x 5,
  { apply h₆; assumption },
  have h₁₀ : x 10 = x 9 - x 8 + x 7 - x 6,
  { apply h₆; assumption },
  have h₁₁ : x 11 = x 10 - x 9 + x 8 - x 7,
  { apply h₆; assumption },
  have h₁₂ : x 12 = x
end

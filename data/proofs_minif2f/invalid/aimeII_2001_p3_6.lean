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

  -- 1. We need to prove that x 531 = 524.
  have h₅₁ : x 531 = x 530 - x 529 + x 528 - x 527,
  { apply h₆, try { simp }, },
  have h₅₂ : x 530 = x 529 - x 528 + x 527 - x 526,
  { apply h₆, try { simp }, },
  have h₅₃ : x 529 = x 528 - x 527 + x 526 - x 525,
  { apply h₆, try { simp }, },
  have h₅₄ : x 528 = x 527 - x 526 + x 525 - x 524,
  { apply h₆, try { simp }, },
  have h₅₅ : x 527 = x 526 - x 525 + x 524 - x 523,
  { apply h₆, try { simp }, },
  have h₅₆ : x 526 = x 525 - x 524 + x 523 - x 522,
  { apply h₆, try { simp }, },
  have
end

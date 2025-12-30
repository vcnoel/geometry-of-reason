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

  -- Base case: n = 5
  have h₅ : x 5 = x 4 - x 3 + x 2 - x 1,
  { rw h₆,
    exact (x 4 - x 3 + x 2 - x 1).symm },
  -- Inductive step: n ≥ 6
  have hₙ : ∀ n ≥ 6, x n = x (n - 1) - x (n - 2) + x (n - 3) - x (n - 4),
  { intro n,
    apply h₆ },
  -- Apply the recurrence relation 531 times
  have h₅₃₁ : x 531 = x 530 - x 529 + x 528 - x 527 + x 526 - x 525 + x 524 - x 523 + x 522 - x 521 + x 520 - x 519 + x 518 - x 517 + x 516 - x 515 + x 514 - x 513 + x 512 - x 511 + x 510 - x 509 + x 508 - x 507 + x 506 - x
end

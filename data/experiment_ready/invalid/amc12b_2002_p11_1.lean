import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p11
  (a b : ℕ)
  (h₀ : nat.prime a)
  (h₁ : nat.prime b)
  (h₂ : nat.prime (a + b))
  (h₃ : nat.prime (a - b)) :
  nat.prime (a + b + (a - b + (a + b))) :=
begin

  -- Step 1: We can factor (a + b) and (a - b) out of the expression a + b + (a - b + (a + b)).
  have h₁₄ : a + b + (a - b + (a + b)) = (a + b) + (a - b) + (a + b),
  by { unfold_add, unfold_sub, unfold_add, unfold_sub, unfold_add, unfold_sub, unfold_add, unfold_sub },
  -- Step 2: The expression (a + b) + (a - b) + (a + b) is equal to 2 * (a + b) + (a - b).
  have h₁₅ : (a + b) + (a - b) + (a + b) = 2 * (a + b) + (a - b),
  by { unfold_add, unfold_sub, unfold_add, unfold_sub, unfold_add },
  -- Step 3: Since a + b is a multiple of b and a - b is a multiple of b, then 2 * (a + b) + (a - b) is also a multiple of b.
  have h₁₆
end

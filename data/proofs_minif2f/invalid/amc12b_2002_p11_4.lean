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

  have h₄ : 2 * b = (a + b) - (a - b),
  by { calc 2 * b = b + b : by rw nat.mul_add_left 1 b
      ... = (a - b) + (a + b) : by rw h₃
      ... = (a + b) - (a - b) : by rw add_sub_cancel a (a - b) },
  have h₅ : 2 * b = (a + b) - (a - b),
  by { calc 2 * b = b + b : by rw nat.mul_add_left 1 b
      ... = (a + b) - (a - b) : by rw h₄ },
  have h₆ : a + b + (a - b + (a + b)) = a + b + (a + b) + b - b,
  by { calc a + b + (a - b + (a + b)) = a + b + (a + b) + ((a + b) - (a - b)) : by rw h₅
      ... = a + b + (a + b) + ((a +
end

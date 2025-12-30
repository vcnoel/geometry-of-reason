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

  have h₄ : nat.prime ((a + b) + (a - b)), by
    { apply nat.prime_add,
      { apply h₂ },
      { apply h₃ } },
  have h₅ : nat.prime (2 * a), by
    { apply nat.prime_mul,
      { apply h₀ },
      { apply nat.prime_two } },
  have h₆ : nat.prime (2 * b), by
    { apply nat.prime_mul,
      { apply h₁ },
      { apply nat.prime_two } },
  have h₇ : nat.prime ((a + b) + (a - b + (a + b))), by
    { apply nat.prime_add,
      { apply h₄ },
      { apply h₅ } },
  exact h₇,

end

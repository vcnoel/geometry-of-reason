import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_156
  (n : ℕ)
  (h₀ : 0 < n) :
  nat.gcd (n + 7) (2 * n + 1) ≤ 13 :=
begin

  have h₁ : nat.gcd (n + 7) (2 * n + 1) = nat.gcd (n + 7) ((2 * n + 1) - (n + 6)),
  by
  { apply nat.gcd_sub_left; linarith },
  have h₂ : nat.gcd (n + 7) ((2 * n + 1) - (n + 6)) = nat.gcd (n + 7) (n - 5),
  by
  { apply nat.gcd_sub_left; linarith },
  have h₃ : nat.gcd (n + 7) (n - 5) = nat.gcd (n + 7) (n + 2),
  by
  { apply nat.gcd_neg; linarith },
  have h₄ : nat.gcd (n + 7) (n + 2) = 7,
  by
  { apply nat.gcd_eq; linarith },
  have h₅ : nat.gcd (n + 7) (n - 5) = 7,
  by
  { apply nat.gcd_neg; linarith },
  have h₆ :
end

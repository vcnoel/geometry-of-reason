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

  have h₄ : nat.prime (a + b - (a - b)) := by
    rw [← nat.sub_add_cancel h₃]
    apply h₂,
  have h₅ : nat.prime (2 * (a + b)) := by
    apply h₄,
  have h₆ : nat.prime (2 * (a + b) + 2) := by
    apply nat.prime_two_plus,
  have h₇ : nat.prime (4 * (a + b) + 2) := by
    apply nat.prime_mul,
  have h₈ : nat.prime (4 * (a + b) + 2 + 2) := by
    apply nat.prime_two_plus,
  have h₉ : nat.prime (2 * (4 * (a + b) + 2)) := by
    apply h₈,
  have h₁₀ : nat.prime (2 * (4 * (a + b) + 2 + 2)) := by
    apply nat.prime_two_plus,
  have h₁₁ : nat.prime (8 * (a + b) + 6) := by
end

import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_482
  (m n : ℕ)
  (k : ℝ)
  (f : ℝ → ℝ)
  (h₀ : nat.prime m)
  (h₁ : nat.prime n)
  (h₂ : ∀ x, f x = x^2 - 12 * x + k)
  (h₃ : f m = 0)
  (h₄ : f n = 0)
  (h₅ : m ≠ n) :
  k = 35 :=
begin

  have h₆ : ∃ p q, f p = 0 ∧ f q = 0 ∧ p ≠ q, from
    exists_two_roots h₃ h₄ h₅,
  have h₇ : f p = 0, from h₆.left,
  have h₈ : f q = 0, from h₆.right,
  have h₉ : p ≠ q, from h₆.middle,
  have h₁₀ : f p = p^2 - 12*p + k, from h₂,
  have h₁₁ : f q = q^2 - 12*q + k, from h₂,
  have h₁₂ : p ≠ n ∧ q ≠ n, from
    not_or_of_not_not_and_not_not
      (ne_of_lt (lt_of_le_of_lt (le_of_eq (nat.succ_le_succ (zero_le p))) (lt_add_one p)))
      (ne_of_lt (lt_of_le_of_lt (le_of_eq (nat.succ_le_succ (zero_le q))) (lt_add_one q))),
  have h₁₃ : f n = n^2 - 12 * n + k, from h₂,
 
end

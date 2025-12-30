import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_22
  (b : ℕ)
  (h₀ : b < 10)
  (h₁ : nat.sqrt (10 * b + 6) * nat.sqrt (10 * b + 6) = 10 * b + 6) :
  b = 3 ∨ b = 1 :=
begin

  by_cases h₂ : b = 1,
  {   by_contradiction h₃,
      have h₄ : b ≠ 1,
      from not_congr h₂ h₃,
      have h₅ : b > 1,
      from nat.succ_pos (nat.succ_pos h₄),
      have h₆ : 10 * b + 6 > 0,
      from add_pos (mul_pos (10_pos h₅) h₅) six_pos,
      have h₇ : 0 < nat.sqrt (10 * b + 6),
      from sqrt_pos h₆,
      have h₈ : (nat.sqrt (10 * b + 6))^2 = 10 * b + 6,
      from h₁,
      have h₉ : nat.sqrt (10 * b + 6) = nat.sqrt (10 * b + 6),
      from eq_of_mul_eq_self h₇ h₈,
      have h₁₀ : 10 * b + 6 = (nat.sqrt (10 * b + 6))^2,
      from h₉,
      have h₁₁ : nat.sqrt (10 * b + 6) ≠
end

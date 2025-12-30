import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_ineq_nsqlefactn
  (n : ℕ)
  (h₀ : 4 ≤ n) :
  n^2 ≤ n! :=
begin

  have h₁ : 1 ≤ n,
  from nat.succ_le_of_lt (nat.lt_of_le_and_lt h₀ (by simp)),
  have h₂ : 1 ≤ n - 1,
  from nat.succ_le_of_lt (nat.lt_of_le_and_lt h₁ (by simp)),
  have h₃ : n - 1 ≥ 1,
  by linarith,
  have h₄ : n! ≥ (n - 1)! * n,
  from (n - 1)! * n ≥ n! by nsmul_le_of_le_factorial h₃,
  have h₅ : n! ≥ (n - 1)! * n,
  from h₄,
  have h₆ : n! ≥ (n - 1)! * n,
  from h₅,
  have h₇ : n! ≥ (n - 2)! * (n - 1) * n,
  from (n - 2)! * (n - 1) * n ≥ (n - 1)! * n by nsmul_le_of_le_factorial h₃,
  have h₈ : n! ≥ (n - 2)! * (n -
end

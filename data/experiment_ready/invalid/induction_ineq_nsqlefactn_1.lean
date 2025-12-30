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

  have h₁ : n ≥ 4,
  by {apply nat.succ_le_succ, apply h₀},

  have h₂ : n ≥ 3,
  by {apply nat.succ_le_succ, apply h₁},

  have h₃ : n ≥ 2,
  by {apply nat.succ_le_succ, apply h₂},

  have h₄ : n ≥ 1,
  by {apply nat.succ_le_succ, apply h₃},

  have h₅ : n ≥ 4,
  by {apply h₁},

  have h₆ : n ≥ 3,
  by {apply h₂},

  have h₇ : n ≥ 2,
  by {apply h₃},

  have h₈ : n ≥ 1,
  by {apply h₄},

  have h₉ : n ≥ 4,
  by {apply h₁},

  have h₁₀ : n ≥ 3,
  by {apply h₂},

  have h₁₁ : n ≥ 2,
  by {apply h₃},

  have h₁₂ : n ≥ 1,
  by {apply h₄},

  have h₁₃ : n ≥ 4,
  by
end

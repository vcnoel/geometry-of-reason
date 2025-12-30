import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_nckeqnm1ckpnm1ckm1
  (n k : ℕ)
  (h₀ : 0 < n ∧ 0 < k)
  (h₁ : k ≤ n) :
  nat.choose n k = nat.choose (n - 1) k + nat.choose (n - 1) (k - 1) :=
begin

  -- by linarith,
  have h₂ : n = k + (n - k),
  from nat.add_left_cancel (n - k) k,

  have h₃ : 0 < n - k,
  from nat.sub_pos_of_lt (nat.succ_le_of_lt h₀.right) h₁,

  have h₄ : 0 < k - 1,
  from nat.sub_pos_of_lt h₀.right (nat.succ_pred_eq_of_lt h₁),

  have h₅ : k - 1 < k,
  from nat.succ_pred_eq_of_lt h₁,

  have h₆ : nat.choose n k = nat.choose (k + (n - k)) k,
  from h₂,

  have h₇ : nat.choose (k + (n - k)) k = nat.choose (k + (n - k)) (k - 1) + nat.choose (k + (n - k)) k,
  from h₅,

  have h₈ : nat.choose (k + (n - k)) (k - 1) = nat.choose (n - 1) (k - 1),
  from h₃,

  have h₉ : nat
end

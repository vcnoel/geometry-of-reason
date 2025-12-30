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

  have h₂ : 0 < k - 1,
  { apply nat.succ_lt_zero.mp,
    apply h₀.right },
  have h₃ : 0 < n - 1,
  { apply nat.succ_lt_zero.mp,
    apply h₀.left },
  have h₄ : 0 < n - 1 - (k - 1),
  { apply h₃ },
  have h₅ : n - 1 - (k - 1) = n - k,
  { ring },
  have h₆ : n - k = nat.pred (n - (k - 1)),
  { apply nat.pred_eq_sub_one,
    apply h₅ },
  have h₇ : 0 < n - (k - 1),
  { apply h₄ },
  have h₈ : n - (k - 1) ≤ n,
  { apply nat.pred_le_pred,
    apply h₁ },
  have h₉ : n - (k - 1) = k,
  { apply nat.pred_eq_sub_one,
    apply h₈ },
  have h₁₀ : k - 1 ≤ n - 1,
  { apply nat.pred_le_pred,

end

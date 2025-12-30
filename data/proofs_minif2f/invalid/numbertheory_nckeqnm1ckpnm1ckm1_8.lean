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

  have h₂ : k < n,
  from nat.lt_of_le_and_lt h₁ (and.right h₀),
  have h₃ : n.succ - k.succ = (n - k) - 1,
  by {
    rewrite [nat.succ_sub_succ h₂, nat.succ_sub h₂],
  },
  have h₄ : nat.choose (n.succ) (k.succ) = nat.choose (n.succ - 1) (k.succ) + nat.choose (n.succ - 1) (k.succ - 1),
  from @nat.choose_add (n.succ) (k.succ) (nat.succ (n - k) - 1) (nat.succ (k - 1)) (by rewrite [h₃, nat.succ_sub h₂]) (by rewrite [h₃, nat.succ_sub h₂]),
  have h₅ : nat.choose (n.succ) (k.succ) = nat.choose (n - 1) (k) + nat.choose (n - 1) (k - 1),
  from @nat.choose_add (n.succ) (k.succ) (n - k -
end

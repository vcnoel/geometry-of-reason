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

  induction n with n_ih,
  { apply nat.not_choose_zero (n k),
    assumption },
  { cases h₁ with h₁_hk h₁_hk',
    { apply nat.not_choose_zero (n k),
      assumption },
    { have h₂ : n = n_ih + 1 := rfl,
      have h₃ : n_ih < n := nat.lt_succ_self n_ih,
      have h₄ : k = k - 1 ∨ k = n_ih ∨ k = n_ih + 1 := nat.eq_or_lt_of_le h₁_hk,
      cases h₄ with h₄_k1 h₄_kn h₄_knp1,
      { have h₅ : k = k - 1 := h₄_k1,
        have h₆ : k - 1 < n := nat.lt_of_le_of_lt h₁_hk h₃,
        have h₇ : k - 1 < k := nat.lt_sub_right_of_add h₅,
        have h₈ : k - 1 + 1 = k := nat.add_sub_cancel_left k 1,
        have h₉ : n - 1 = n_i
end

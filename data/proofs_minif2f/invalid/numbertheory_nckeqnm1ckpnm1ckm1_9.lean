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

  have h₂ : k < n, from (and.elim_left h₀).lt_of_not_le (mt and.elim_left),
  have h₃ : k - 1 < n - 1, from (nat.sub_lt_sub_right h₂ 1).trans (nat.lt_sub_left h₁),
  have h₄ : k ≤ n - 1, from (lt_add_one n).trans h₁,
  have h₅ : k ≤ n - 1, from h₄,
  have h₆ : k - 1 < n - 1, from h₃,
  have h₇ : 0 < k - 1, from (nat.sub_pos_of_lt h₂).trans (nat.lt_of_le_of_lt h₅ h₆),
  have h₈ : 0 < n - 1, from (nat.sub_pos_of_lt h₂),
  have h₉ : 0 < k, from (and.elim_left h₀),
  have h₁₀ : 0 < n - 1, from (and.elim_left h₀),
  have h₁₁ : 0 < n - 1, from (and.elim_left h₀),

end

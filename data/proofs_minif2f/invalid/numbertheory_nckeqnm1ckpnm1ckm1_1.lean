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

  have h₂ : 0 < n - 1 := and.left h₀,
  have h₃ : 0 < k - 1 := and.right h₀,
  have h₄ : k - 1 < k := by {apply nat.lt_sub, apply nat.lt_zero},
  have h₅ : k ≤ n - 1 := by {apply h₁, apply nat.lt_sub},
  have h₆ : n - 1 > 0 := by {apply h₂, apply nat.lt_sub},
  have h₇ : k - 1 > 0 := by {apply h₃, apply nat.lt_sub},
  have h₈ : n - 1 ≥ k - 1 := by {apply h₅, apply nat.le_sub},
  have h₉ : n - 1 ≥ k := by {apply h₅, apply nat.le_sub},
  have h₁₀ : n - 1 - (k - 1) = n - k := by {apply nat.sub_sub, apply nat.sub_sub, apply nat.sub_sub, apply nat.sub_sub},
  have h₁₁ : n - 1 - k = -(k - (n - 1)) := by
end

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

  cases k with k,
  { have : n = 0, from h₁ rfl,
    rw this at h₀,
    contradiction },
  { have h₂ : n = k + (n - k), from rfl,
    rw h₂ at h₁,
    have h₃ : n - k = 0 ∨ n - k = 1, from (or_iff_not_imp_left.mp h₁).resolve_left (not_lt.mp (not_lt.mp (lt_irrefl _) h₁)),
    cases h₃ with h₃ h₃,
    { have h₄ : n - k = 0, from h₃,
      rw h₄ at h₁,
      have h₅ : k = n, from h₁ rfl,
      have h₆ : k = 0 ∨ k = 1, from (or_iff_not_imp_left.mp h₅).resolve_left (not_lt.mp (not_lt.mp (lt_irrefl _) h₅)),
      cases h₆ with h₆ h₆,
      { have h₇ : k = 0, from h₆,
        have h₈ : n = 0, from h₇.symm ▸ h₂
end

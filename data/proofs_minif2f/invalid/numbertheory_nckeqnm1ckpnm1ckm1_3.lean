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

  have h₂ : n = (n - 1) + 1,
  { refl },
  have h₃ : k = (k - 1) + 1,
  { refl },
  have h₄ : n - k = (n - 1) - (k - 1),
  { refl },
  have h₅ : (n - 1) < n,
  { simp [h₂] },
  have h₆ : (k - 1) < k,
  { simp [h₃] },
  have h₇ : (n - 1) < (n - 1) + (k - 1),
  { simp [h₄, h₅, h₆] },
  have h₈ : nat.choose (n - 1) (k - 1) = nat.choose (n - 1) k + nat.choose (n - 1) (k - 1),
  { apply nat.choose_add_right,
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
    { assumption },
   
end

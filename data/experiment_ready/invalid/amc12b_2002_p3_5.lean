import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p3
  (S : finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n)) :
  S.card = 1 :=
begin

  rw finset.card_eq_one,
  refine finset.exists_unique_of_forall_unique_of_forall_mem_of_subset,
  { rintro n h₁ h₂,
    refine h₀.mp (h₂.resolve_left (λ h₃, _)),
    cases h₃ with h₃ h₃,
    { exact h₂.resolve_right h₃ },
    { exact h₂.resolve_right (nat.succ_pos h₃) } },
  { rintro n h₁ h₂,
    refine h₀.mpr (h₁.resolve_left (λ h₃, _)),
    cases h₃ with h₃ h₃,
    { exact h₁.resolve_right h₃ },
    { exact h₁.resolve_right (nat.succ_pos h₃) } },
  { rintros n₁ n₂ h₁ h₂ h₃ h₄ h₅,
    refine h₀.mp (h₄.resolve_left (λ h₃, _)),
    refine h₀.mp (h₅.resolve_left (λ h₃, _)),
    refine h₂.resolve_left (λ h₃, _),
    refine h₂.resolve_left (λ h₃, _),
    refine h₃.resolve_left (λ h₃, _),
    refine h₃.resolve_left
end

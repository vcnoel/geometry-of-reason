import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_32
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ n ∣ 36) :
  ∑ k in S, k = 91 :=
begin

  let s := finset.univ.filter h₀,
  have hs : s = S,
  { ext,
    exact h₀ },
  have h₁ : ∀ (k : ℕ), k ∈ s ↔ k ∣ 36,
  { rintro k rfl,
    exact h₀ },
  have h₂ : ∀ (k : ℕ), k ∈ s → k ≤ 36,
  { rintro k h,
    have h₃ : k ∣ 36 := h₁ h,
    have h₄ : 36 % k = 0,
    { apply_mod_eq_zero_of_dvd h₃ },
    have h₅ : k ≤ 36,
    { apply_mod_le_of_mod_eq_zero h₄ },
    exact h₅ },
  have h₃ : ∑ k in s, k ≤ 91,
  { refine finset.sum_le (λ k hk, _) (finset.forall_finset _),
    exact h₂ hk },
  have h₄ : s = ∅ ∨ s ≠ ∅,
  { by_contradiction,
    have h₅ : s ≠ ∅,
    { exact not_false },
    have h₆ : ∃ k, k ∈
end

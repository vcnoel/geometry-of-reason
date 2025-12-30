import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_221
  (S : finset ℕ)
  (h₀ : ∀ (x : ℕ), x ∈ S ↔ 0 < x ∧ x < 1000 ∧ x.divisors.card = 3) :
  S.card = 11 :=
begin

  refine S.card.eq (finset.filter S (λ x, h₀ x)).card,
  { ext,
    { intro h,
      cases h with h₁ h₂,
      { cases h₂ with h₂₁ h₂₂,
        { exact h₂₁ },
        { contradiction } },
      { contradiction } },
    { intro h,
      cases h with h₁ h₂,
      { exact h₁ },
      { cases h₂ with h₂₁ h₂₂,
        { exact h₂₁ },
        { exact h₂₂ } } } },
  { exact h₀ },

end

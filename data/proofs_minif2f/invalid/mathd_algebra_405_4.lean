import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_405
  (S : finset ℕ)
  (h₀ : ∀ x, x ∈ S ↔ 0 < x ∧ x^2 + 4 * x + 4 < 20) :
  S.card = 2 :=
begin

  apply finset.card_congr,
  { rintro x ⟨x₀, x₁⟩,
    refine ⟨x₀, x₁⟩,
    rw [h₀],
    split,
    { exact or.elim x₁
        (λ h₁, h₀ x₀ _ (or.inl h₁))
        (λ h₁, h₀ x₀ _ (or.inr h₁)) },
    { rw x₁ },
  },
  { intro x,
    exact h₀ x },

end

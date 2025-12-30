import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_257
  (x : ℕ)
  (h₀ : 1 ≤ x ∧ x ≤ 100)
  (h₁ : 77∣(∑ k in (finset.range 101), k - x)) :
  x = 45 :=
begin

  cases h₀ with h₀₁ h₀₂,
  have h₂ : 77 ∣ (∑ k in finset.range 101, k - x) - (∑ k in finset.range 101, k - 45),
    by { apply finset.sum_sub_card, },
  have h₃ : (∑ k in finset.range 101, k - 45) = 0,
    by { apply finset.sum_const, },
  have h₄ : 77 ∣ 0,
    by { apply h₂, apply h₃, },
  have h₅ : 77 = 0,
    by { apply h₄, },
  have h₆ : False,
    by { apply not_lt_of_le h₀₁, apply h₅, },
  exact h₆,

end

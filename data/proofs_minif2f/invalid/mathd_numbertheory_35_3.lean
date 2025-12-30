import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_35
  (S : finset ℕ)
  (h₀ : ∀ (n : ℕ), n ∣ (nat.sqrt 196)) :
  ∑ k in S, k = 24 :=
begin

  have h₁ : 196 = 2 * 2 * 7 * 7,
  by { rw [two_pow_two, two_pow_two], },
  have h₂ : ∑ k in S, k = 24,
  by {
    rw [h₁],
    generalize_proofs h₃ : ∑ k in S, k = 2 * (2 * ∑ k in S, k),
    generalize_proofs h₄ : ∑ k in S, k = 2 * (7 * ∑ k in S, k),
    generalize_proofs h₅ : ∑ k in S, k = 2 * (7 * 7 * ∑ k in S, k),
    have h₆ : 2 * 2 * 7 * 7 = 24,
    by { simp only [h₁], },
    have h₇ : ∑ k in S, k = 24,
    by { rw [h₆], },
    exact h₇,
  },
  exact h₂,

end

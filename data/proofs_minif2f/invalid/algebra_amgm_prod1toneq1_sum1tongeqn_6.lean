import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_prod1toneq1_sum1tongeqn
  (a : ℕ → nnreal)
  (n : ℕ)
  (h₀ : finset.prod (finset.range(n)) a = 1) :
  finset.sum (finset.range(n)) a ≥ n :=
begin

  by_cases h₁ : ∀ i, i ∈ finset.range(n) → a i = 1,
  { have h₂ := h₀,
    have h₃ := finset.prod_eq_one_of_all_eq_one h₁,
    have h₄ := h₃,
    exact h₄ },
  { have h₅ := finset.prod_le_one_of_not_all_eq_one h₁,
    have h₆ := h₅,
    exact h₆ },

end

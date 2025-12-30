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

  by_contradiction h,
  have h₁ := finset.sum_le_prod a (finset.range(n)),
  have h₂ : finset.prod (finset.range(n)) a ≥ n,
  { have h₃ : finset.sum (finset.range(n)) a ≥ n,
    { have h₄ := finset.sum_le_sum a (finset.range(n)) (finset.range(n)),
      have h₅ : finset.sum (finset.range(n)) a ≥ 1,
      { exact h₀ },
      have h₆ := le_trans h₄ h₅,
      exact h₆ },
    have h₇ : finset.prod (finset.range(n)) a ≥ n,
    { have h₈ : finset.prod (finset.range(n)) a = finset.sum (finset.range(n)) a,
      { have h₉ : finset.range(n) = finset.range(n),
        { refl },
        have h₁₀ : a = a,
        { refl },
        have h₁₁ := finset.prod_eq_sum a h₉ h₁₀,
        exact h₁₁ },
      have h₁₂ := le_trans h₃ h₈,

end

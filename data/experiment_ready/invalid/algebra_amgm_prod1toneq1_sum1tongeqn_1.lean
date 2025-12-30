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

  have h₁ : ∀ i, a i = 1,
  { intro i,
    have h₂ : a i ≤ 1,
    { rw h₀,
      exact finset.prod_le_one (finset.range n) },
    exact le_of_eq (ge_iff_le.mp (le_of_eq_le (h₂.trans le_refl))) },
  rw finset.sum_const,
  exact nat.cast_le.mpr (finset.sum_le_card h₁)

end

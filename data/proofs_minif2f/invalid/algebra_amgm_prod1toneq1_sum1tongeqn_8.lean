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

  rw finset.sum_le_sum,
  intros i hi,
  exact (a i) ≥ 1,

end

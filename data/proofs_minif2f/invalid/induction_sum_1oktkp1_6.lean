import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  have : ∀ k in finset.range n, (1 : ℝ) / ((k + 1) * (k + 2)) = 1 / ((k + 1) * (k + 2)),
  { intros k hk,
    exact (by refl), },
  rw finset.sum_congr this,
  congr,
  { refine finset.sum_const _,
    exact (n / (n + 1)) },
  { refine finset.sum_const _,
    exact (1 / (n + 1)) },

end

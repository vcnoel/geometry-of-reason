import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  simp,
  have : ∀ k : ℕ, k % 9 = k - 9 * (k / 9),
  { intros k,
    by_cases h : k % 9 = 0,
    { exact (nat.div_eq_of_lt $ (nat.mod_lt _ $ by norm_num).trans_lt $ nat.sub_lt_sub_right _ (9 * (k / 9)) $ by norm_num).symm },
    { exact (nat.div_eq_of_lt $ (nat.mod_lt _ $ by norm_num).trans_lt $ nat.sub_lt_sub_right _ (9 * (k / 9)) $ by norm_num).symm } },
  refine ((finset.sum_const (9 * (i / 9)) i).symm.trans (finset.sum_const (i - 9 * (i / 9)) i)),
  { congr,
    { rw finset.sum_const,
      simp },
    { rw finset.sum_const,
      simp },
    { rw finset.sum_const,
      simp },
    { rw finset.sum_const,
      simp },
    { rw finset.sum_const,
      simp },
    { rw finset.sum_const,
      simp },
    { rw finset.sum_const,

end

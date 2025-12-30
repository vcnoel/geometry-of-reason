import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in finset.Icc 1 100, v k) % 7 = 4 :=
begin

  apply congr_arg,
  simp only [Nat.sum_eq_sum_finite],
  apply finset.sum_congr rfl,
  simp only [finset.mem_Icc],
  intros k hk,
  apply congr_arg,
  simp only [Nat.mod_def, Nat.mod_eq_sub_mul_div, Nat.sub_sub],
  apply Nat.sub_add_cancel,
  apply h₀,
  assumption,

end

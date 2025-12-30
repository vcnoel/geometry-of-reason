import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_24 :
  (∑ k in (finset.Icc 1 9), 11^k) % 100 = 59 :=
begin
  norm_num,
  have h₁ : finset.Icc 1 9 = finset.Ico 1 10, {
    exact rfl,
  },
  rw h₁,
  norm_num [finset.sum_Ico_succ_top],
end
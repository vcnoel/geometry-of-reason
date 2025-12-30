import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_466 :
  (∑ k in (finset.range 11), k) % 9 = 1 :=
begin

  calc (∑ k in (finset.range 11), k) % 9 = 
  (∑ k in (finset.range 10) + 11 % 9) % 9 : by {rw [finset.sum_add, finset.sum_const, add_mod]}
 ... = ((∑ k in (finset.range 10), k) % 9 + 11 % 9) % 9 : by {rw [add_mod]}
 ... = ((45 % 9 + 11 % 9) % 9) % 9 : by {simp only [finset.sum_range_one]}
 ... = ((45 + 11) % 9) % 9 : by {simp only [add_mod]}
 ... = (56 % 9) % 9 : by {simp only [add]}
 ... = 1 : by {norm_num}

end

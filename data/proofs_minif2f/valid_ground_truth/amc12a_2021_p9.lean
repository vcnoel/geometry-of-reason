import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p9 :
  ∏ k in finset.range 7, (2^(2^k) + 3^(2^k)) = 3^128 - 2^128 :=
begin
  simp only [finset.prod_range_succ],
  norm_num,
end
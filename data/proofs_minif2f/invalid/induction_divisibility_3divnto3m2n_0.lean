import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  cases n,
  { exact nat.zero_div 0 },
  { exact nat.pos_div_of_pos (nat.succ_pos n) (nat.succ_pos n) },

end

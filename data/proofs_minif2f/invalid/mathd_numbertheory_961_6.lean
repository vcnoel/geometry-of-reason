import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_961 :
  2003 % 11 = 1 :=
begin

  -- 2003 divided by 11 is 181 with a remainder of 10
  have h1 : 2003 = 11 * 181 + 10 := by norm_num,
  -- 10 is congruent to -1 modulo 11
  have h2 : 10 ≡ -1 [MOD 11] := by norm_num,
  -- so 2003 is congruent to 1 modulo 11
  show 2003 % 11 = 1, from (congr_arg2 (λ a b, a % b) h1 h2).symm,

end

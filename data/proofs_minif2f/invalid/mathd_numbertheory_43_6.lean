import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_43 :
  is_greatest {n : ℕ | 15^n ∣ 942! } 233 :=
begin

  -- 1st case: n = 0
  have h0 : 15^0 ∣ 942!, by { apply pow_le_one, exact nat.zero_le },
  -- 2nd case: n = 1
  have h1 : 15^1 ∣ 942!, by { apply pow_le_one, exact nat.one_le_two },
  -- 3rd case: n = 2
  have h2 : 15^2 ∣ 942!, by { apply pow_le_one, exact nat.succ_le_succ nat.one_le_two },
  -- 4th case: n = 3
  have h3 : 15^3 ∣ 942!, by { apply pow_le_one, exact nat.succ_le_succ nat.succ_le_succ nat.one_le_two },
  -- 5th case: n = 4
  have h4 : 15^4 ∣ 942!, by { apply pow_le_one, exact nat.succ_le_succ nat.succ_le_succ nat.succ_le_succ nat.one_le_two },
  -- 6th case: n = 5
  have h5 : 15^5 ∣ 942!, by { apply pow_le_one
end

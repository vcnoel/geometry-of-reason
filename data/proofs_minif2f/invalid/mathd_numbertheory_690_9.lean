import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_690 :
  is_least {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]} 314 :=
begin

  -- The smallest positive integer congruent to 2 modulo 3, 4 modulo 5, 6 modulo 7, and 8 modulo 9 is 314.
  apply least_exists_unique,
  -- There exists a least positive integer that satisfies the conditions.
  apply exists_least,
  -- We use the Chinese Remainder Theorem to find the smallest positive integer that satisfies the conditions.
  apply chinese_remainder_theorem,
  -- We have 0 < 314 and 314 ≡ 2 [MOD 3] and 314 ≡ 4 [MOD 5] and 314 ≡ 6 [MOD 7] and 314 ≡ 8 [MOD 9].
  exact ⟨314, by simp⟩,

end

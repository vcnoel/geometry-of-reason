import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_690 :
  is_least {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]} 314 :=
begin

  -- We are given that 314 is a solution to the Chinese Remainder Theorem.
  have H1 : 314 ≡ 2 [MOD 3],
  have H2 : 314 ≡ 4 [MOD 5],
  have H3 : 314 ≡ 6 [MOD 7],
  have H4 : 314 ≡ 8 [MOD 9],
  -- We need to show that 314 is the least solution to the system of congruences.
  -- To do this, we need to show that any smaller solution would have to be less than 314.
  assume a,
  assume ha : 0 < a,
  assume a_mod_3 : a ≡ 2 [MOD 3],
  assume a_mod_5 : a ≡ 4 [MOD 5],
  assume a_mod_7 : a ≡ 6 [MOD 7],
  assume a_mod_9 : a ≡ 8 [MOD 9],
  -- We will use the Chinese Remainder Theorem to show that a ≡ 314 [MOD 315].
  have H5 : 315 = 3 * 5 * 7 * 9,
  have H6
end

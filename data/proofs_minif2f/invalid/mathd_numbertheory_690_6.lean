import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_690 :
  is_least {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]} 314 :=
begin

  -- The congruences are satisfied for a = 314
  have H1 : 314 ≡ 2 [MOD 3],
  by simp,
  have H2 : 314 ≡ 4 [MOD 5],
  by simp,
  have H3 : 314 ≡ 6 [MOD 7],
  by simp,
  have H4 : 314 ≡ 8 [MOD 9],
  by simp,

  -- We need to show that 314 is the least number that satisfies all the congruences
  have H5 : ∀ a : ℕ, (0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]) → a ≥ 314,
  
end

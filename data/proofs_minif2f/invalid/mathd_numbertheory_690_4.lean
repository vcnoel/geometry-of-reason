import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_690 :
  is_least {a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9]} 314 :=
begin

  apply is_least.intro,
  { refine le_of_eq (nat.mod_eq_of_lt (lt_of_lt_of_le (show 314 < 315, by linarith) (show 315 ≤ 315, by refl))),
    simp },
  { refine le_of_eq (nat.mod_eq_of_lt (lt_of_lt_of_le (show 314 < 315, by linarith) (show 315 ≤ 315, by refl))),
    simp },
  { refine le_of_eq (nat.mod_eq_of_lt (lt_of_lt_of_le (show 314 < 315, by linarith) (show 315 ≤ 315, by refl))),
    simp },
  { refine le_of_eq (nat.mod_eq_of_lt (lt_of_lt_of_le (show 314 < 315, by linarith) (show 315 ≤ 315, by refl))),
    simp },
  { refine le_of_eq (nat.mod_eq_of_lt (lt_of_lt_of_le (show 314 < 315, by linarith) (show 315 ≤ 315, by refl))),
    simp },

end

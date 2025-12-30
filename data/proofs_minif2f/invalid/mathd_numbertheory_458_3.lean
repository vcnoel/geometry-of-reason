import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_458
  (n : ℕ)
  (h₀ : n % 8 = 7) :
  n % 4 = 3 :=
begin

  cases n with n,
  { cases n with n_1,
    { exfalso,
      exact nat.mod_eq_zero_of_lt (nat.lt_succ_self 7) },
    { exfalso,
      exact nat.mod_eq_zero_of_lt (nat.lt_succ_self 6) } },
  { cases n with n_1,
    { exfalso,
      exact nat.mod_eq_zero_of_lt (nat.lt_succ_self 7) },
    { have h₁ : n_1 % 8 = 7,
      by { rw [← nat.mod_eq_of_lt (lt_of_lt_of_le (nat.lt_succ_self n_1) (nat.le_of_lt_succ (lt_trans (nat.lt_succ_self n_1) (nat.lt_succ_self (n_1 + 1)))))] },
      have h₂ : n_1 % 4 = 3,
      by { rw [← nat.mod_eq_of_lt (lt_of_lt_of_le (nat.lt_succ_self n_1) (nat.le_of_lt_succ (lt_trans (nat.lt_succ_self n_1) (nat.lt_succ_self (n_1 + 1))))),
            h₁],
        exact nat.mod_eq_of_lt (lt_trans
end

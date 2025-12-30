import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p6
  (n : ℕ)
  (h₀ : 0 < n) :
  ∃ m, (m > n ∧ ∃ p, m * p ≤ m + p) :=
begin
  use (n : ℕ).succ,
  norm_num,
  split,
  { exact_mod_cast (nat.lt_succ_self _) },
  use 1,
  rw mul_one,
  apply nat.succ_le_succ,
  exact le_of_lt (nat.lt_succ_self n),
end
import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  cases n with n n_1,
  { simp at * },
  { have : 3 ∣ 3 * n^3 + 2 * n^2,
    { exact induction_divisibility_3divnto3m2n n_1 },
    have : 3 ∣ 2 * n^3 + 2 * n^2,
    { exact induction_divisibility_3divnto3m2n n_1 },
    have : 3 ∣ n^3 + 2 * n^2 + n,
    { exact induction_divisibility_3divnto3m2n n_1 },
    have : 3 ∣ n^3 + 2 * n^2,
    { exact induction_divisibility_3divnto3m2n n_1 },
    exact (add_right_div 3 (this) (this)).1 },

end

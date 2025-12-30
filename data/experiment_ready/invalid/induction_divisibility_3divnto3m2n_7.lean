import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  induction n with n ih,
  { simp },
  { have : 3 ∣ n^3 + 2 * n, by exact ih,
    simp,
    exact this }

end

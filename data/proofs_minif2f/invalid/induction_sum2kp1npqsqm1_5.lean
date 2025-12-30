import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum2kp1npqsqm1
  (n : ℕ) :
  ↑∑ k in (finset.range n), 2 * k + 3 = ↑(n + 1)^2 - (1:ℤ) :=
begin

  induction n with n ih,
  { simp },
  { have h1 := finset.sum_range_add_one n,
    have h2 := ih,
    simp only [h1, h2] }

end

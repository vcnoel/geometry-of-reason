import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_ineq_nsqlefactn
  (n : ℕ)
  (h₀ : 4 ≤ n) :
  n^2 ≤ n! :=
begin
  simp only [sq],
  casesI n with n,
  exact dec_trivial,
  simp,
  apply nat.succ_le_of_lt,
  apply nat.lt_factorial_self,
  exact nat.succ_le_succ_iff.mp h₀,
end
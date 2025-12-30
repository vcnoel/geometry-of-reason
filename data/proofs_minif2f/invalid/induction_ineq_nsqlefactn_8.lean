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

  induction n with n hn,
  { simp, },
  { calc
      n^2 = (n-1 + 1)^2 : by ring
        ≤ (n-1)^2 + 2*(n-1) + 1 : by linarith
        ≤ (n-1)! * n + 2 * (n-1) + 1 : by linarith
        ≤ (n-1)! * n + n + n : by linarith
        ≤ (n-1)! * n + n! : by linarith
        ≤ (n-1)! * n + n! * (n-1+1) : by linarith
        ≤ n! * n : by linarith
        = n! * (n-1+1) : by linarith
        = n! * n : by linarith, },

end

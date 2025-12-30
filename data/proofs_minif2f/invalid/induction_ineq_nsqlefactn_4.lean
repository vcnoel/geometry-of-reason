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

  induction n with n IH,
  { calc
      0^2 = 0! : by { rw [pow_zero, fact_zero] }
     ... = 0 : by { rw [zero_mul] },
    },
  { calc
      n.succ^2 = n.succ * n.succ : by { rw [pow_succ] }
     ... = n.succ * (n + 1) : by { rw [add_comm] }
     ... = n.succ * (n.succ + 1) : by { rw [add_comm] }
     ... ≤ n.succ * n.succ * (n.succ + 1) : by { apply mul_le_mul_right; apply succ_le_succ }
     ... = (n.succ + 1) * n.succ * n.succ : by { rw [mul_comm] }
     ... = (n.succ + 1) * n.succ! : by { rw [fact_succ] }
     ... = (n.succ + 1)! : by { rw [fact_succ] },
    },
  { assume h₁ : n^2 ≤ n!; calc
      n.succ^2 ≤ (n.succ +
end

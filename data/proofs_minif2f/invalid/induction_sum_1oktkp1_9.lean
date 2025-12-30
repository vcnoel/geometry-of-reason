import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  induction n,
  case nat.zero =>
    { calc
      ∑ k in (finset.range (0 : ℕ)), (1 : ℝ) / ((k + 1) * (k + 2)) =
      ∑ k in finset.range 0, (1 : ℝ) / ((k + 1) * (k + 2)) :
      by simp
     ... = 0 : by simp
    },
  case nat.succ n_1 =>
    { calc
      ∑ k in (finset.range (n_1.succ : ℕ)), (1 : ℝ) / ((k + 1) * (k + 2)) =
      (1 : ℝ) / ((n_1.succ + 1) * (n_1.succ + 2)) + ∑ k in (finset.range n_1), (1 : ℝ) / ((k + 1) * (k + 2)) :
      by simp
     ... = (1 : ℝ) / ((n_1.succ + 1) * (n_1.succ + 2)) + (1 : ℝ) / ((n_1 + 1) * (
end

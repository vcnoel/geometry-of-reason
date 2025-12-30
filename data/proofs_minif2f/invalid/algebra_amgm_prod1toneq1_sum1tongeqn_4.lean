import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_prod1toneq1_sum1tongeqn
  (a : ℕ → nnreal)
  (n : ℕ)
  (h₀ : finset.prod (finset.range(n)) a = 1) :
  finset.sum (finset.range(n)) a ≥ n :=
begin

  induction n with n IH,
  { simp },
  { have : finset.prod (finset.range(n.succ)) a = finset.prod (finset.range(n.succ - 1)) a * a n.succ,
    { simp },
    have : a n.succ ≥ 1,
    { have : a n.succ ≤ finset.prod (finset.range(n.succ)) a / finset.prod (finset.range(n)) a,
      { simp },
      have : finset.prod (finset.range(n)) a = 1,
      { assumption },
      simp },
    have : a n.succ ≥ 1,
    { assumption },
    have : finset.sum (finset.range(n.succ)) a = finset.sum (finset.range(n)) a + a n.succ,
    { simp },
    have : n.succ * a n.succ ≥ n.succ,
    { have : a n.succ ≥ 1,
      { assumption },
      simp },
    have : finset.sum (finset.range(n.succ)) a ≥ n.succ,
    { simp },
    have : n.succ ≥ n,
    { simp },
    have : n.succ ≥ n
end

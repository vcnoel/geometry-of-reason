import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  induction n with n ih,
  { simp },
  { have h : (finset.range (n + 1)).insert (n + 1) = finset.range (n + 1),
    { apply finset.insert_eq_of_not_mem, intros x h1,
      have h2 := (finset.range n).not_mem_insert x,
      have h3 := (finset.mem_range n x),
      have h4 := (finset.mem_range n (n + 1)),
      exact h2 h3 h4 },
    have h2 : (finset.range (n + 1)).insert (n + 1) ≠ finset.range (n + 1),
    { intro h3, exact (finset.not_mem_range n (n + 1)) h3 },
    have h5 : ∑ k in (finset.range (n + 1)), (1 : ℝ) / ((k + 1) * (k + 2)) = ∑ k in (finset.range (n + 1)).insert (n + 1), (1 : ℝ) / ((k + 1) * (k + 2)),
    { apply finset.sum_insert,
end

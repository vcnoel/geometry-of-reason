import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_odd
  (n : ℕ) :
  ∑ k in (finset.range n), 2 * k + 1 = n^2 :=
begin

  induction n with n ih,
  { simp },
  { have f : ∀ k in finset.range n, 2 * k + 1 < 2 * (n + 1) + 1 := λ k hk, by linarith,
    have g : ∀ k in finset.range n, 2 * k + 1 ≠ 2 * (n + 1) + 1 := λ k hk, by linarith,
    have h : ∀ k in finset.range n, 2 * k + 1 < 2 * (n + 1) + 1 ∧ 2 * k + 1 ≠ 2 * (n + 1) + 1 := λ k hk, and.intro (f k hk) (g k hk),
    have i : ∑ k in finset.range n, 2 * k + 1 < 2 * ∑ k in finset.range n, (n + 1) + 1 := by
      { have j : ∀ k in finset.range n, (n + 1) + 1 = n + 1 + 1 := λ k hk, by linarith,
        have k : ∀ k in fin
end

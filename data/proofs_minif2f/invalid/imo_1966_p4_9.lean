import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1966_p4
  (n : ℕ)
  (x : ℝ)
  (h₀ : ∀ k : ℕ, 0 < k → ∀ m : ℤ, x ≠ m * π / (2^k))
  (h₁ : 0 < n) :
  ∑ k in finset.Icc 1 n, (1 / real.sin ((2^k) * x)) = 1 / real.tan x - 1 / real.tan ((2^n) * x) :=
begin

  rw finset.sum_eq_diff,
  { exact finset.Icc 1 n.succ },
  { exact finset.Icc 1 n },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw finset.sum_const },
  { simp },
  { rw fin
end

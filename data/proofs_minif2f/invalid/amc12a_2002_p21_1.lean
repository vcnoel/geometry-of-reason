import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p21
  (u : ℕ → ℕ)
  (h₀ : u 0 = 4)
  (h₁ : u 1 = 7)
  (h₂ : ∀ n ≥ 2, u (n + 2) = (u n + u (n + 1)) % 10) :
  ∀ n, ∑ k in finset.range(n), u k > 10000 → 1999 ≤ n :=
begin

  intro n,
  cases n with n,
  { simp },
  { intros h₃,
    rw [finset.range_succ, finset.sum_add, finset.sum_add, finset.sum_add, finset.sum_add,
        finset.sum_add, finset.sum_add, finset.sum_add, finset.sum_add, finset.sum_add],
    refine nat.succ_le_succ (show (u n + u (n - 1) + 4 + 7 + 3) % 10 > 10000 / 10, from _),
    cases u n % 10 with,
    { refine lt_of_lt_of_le _ (by linarith only [h₀, h₁, h₂]) },
    { refine lt_of_lt_of_le _ (by linarith only [h₀, h₁, h₂]) },
    { refine lt_of_lt_of_le _ (by linarith only [h₀, h₁, h₂]) },
    { refine lt_of_lt_of_le _ (by linarith only [h₀, h₁, h₂]) },
    { refine lt_of_lt_of_le _ (by linarith only [h₀, h₁, h₂]) },
    { refine lt
end

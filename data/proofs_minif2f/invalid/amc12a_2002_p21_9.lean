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

  induction n with n ih generalizing u,
  { simp [finset.range_zero] },
  { have A : ∑ k in finset.range (n + 1), u k ≥ ∑ k in finset.range n, u k + u n,
    { refine finset.sum_add u _ _,
      exact finset.mem_range_succ_self },
    have B : ∑ k in finset.range (n + 1), u k ≥ ∑ k in finset.range n, u k + 7,
    { refine finset.sum_add u _ _,
      exact finset.mem_range_succ_self },
    have C : ∑ k in finset.range (n + 1), u k ≥ 10001,
    { refine le_add_left (finset.sum u _) (u n),
      exact B },
    have D : ∑ k in finset.range (n + 1), u k ≥ 10008,
    { refine le_add_left (finset.sum u _) (7),
      exact C },
    have E : ∑ k in finset.range (n + 1), u k > 10000,
    { exact (finset.sum_pos u (finset.mem_range
end

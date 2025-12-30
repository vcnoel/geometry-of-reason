import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_odd
  (n : ℕ) :
  ∑ k in (finset.range n), 2 * k + 1 = n^2 :=
begin

  induction n with n IH,
  { simp },
  { have h := finset.range_succ _ _,
    have h2 := @finset.sum_insert _ _ _ h (λ (k : ℕ), 2 * k + 1) (IH + 2 * n + 1),
    simp [h2] },

end

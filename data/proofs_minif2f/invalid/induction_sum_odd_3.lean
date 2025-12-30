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
  { rw finset.range_zero, refl },
  { have h1 := @finset.sum_range n (λ k hk, 2 * k + 1),
    have h2 := @finset.sum_range n (λ k hk, 2 * k + 1),
    have h3 := @finset.sum_range (n - 1) (λ k hk, 2 * k + 1),
    have h4 := @finset.sum_range (n - 1) (λ k hk, 2 * k + 1),
    have h5 := @finset.sum_range (n - 1) (λ k hk, 2 * k + 1),
    have h6 := @finset.sum_range (n - 1) (λ k hk, 2 * k + 1),
    have h7 := @finset.sum_range (n - 1) (λ k hk, 2 * k + 1),
    have h8 := @finset.sum_range (n - 1) (λ k hk, 2 * k + 1),
    have h9 := @finset.sum_range (n - 1)
end

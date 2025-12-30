import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_109
  (v : ℕ → ℕ)
  (h₀ : ∀ n, v n = 2 * n - 1) :
  (∑ k in finset.Icc 1 100, v k) % 7 = 4 :=
begin

  have h₁ := finset.sum_const (v 1),
  have h₂ := finset.sum_const (v 100),
  have h₃ := finset.sum_add_distrib (finset.Icc 1 100) (finset.Icc 1 100) (λ k hk, v k),
  have h₄ := finset.sum_add_distrib (finset.Icc 1 100) (finset.Icc 1 100) (λ k hk, v (k + 1)),
  have h₅ := finset.sum_subset (finset.Icc 1 100) (finset.Icc 2 101),
  have h₆ := finset.sum_eq_single 1 (λ k hk, v k) (λ k hk, v (k + 1)) (λ k hk, v k) (λ k hk, v (k + 1)) (λ k hk, v k) (λ k hk, v (k + 1)) (λ k hk, v k) (λ k hk, v (k + 1)) (λ k hk, v k) (λ k hk, v (k + 1)) (λ
end

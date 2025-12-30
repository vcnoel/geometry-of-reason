import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1978_p5
  (n : ℕ)
  (a : ℕ → ℕ)
  (h₀ : ∀ (m : ℕ), 0 < a m)
  (h₁ : ∀ (p q : ℕ), p ≠ q → a p ≠ a q)
  (h₂ : 0 < n) :
  (∑ k in finset.Icc 1 n, (1 : ℝ)/k) ≤ ∑ k in finset.Icc 1 n, (a k)/k^2 :=
begin

  apply le_of_lt,
  apply @finset.sum_lt_sum (ℝ) _ (finset.Icc 1 n) (λ k hk, (a k)/k^2) (λ k hk, (1 : ℝ)/k),
  intros k hk,
  apply (h₁ k k),
  apply finset.mem_Icc.mp hk,
  apply (h₀ k),
  apply finset.mem_Icc.mp hk,
  apply finset.sum_bij' (λ k hk, k) (λ k hk, k) (λ k hk, (1 : ℝ)/k) (λ k hk, (a k)/k^2),
  { intros k hk,
    apply finset.mem_Icc.mp hk, },
  { intros k hk,
    apply finset.mem_Icc.mp hk, },
  { intros k hk,
    apply finset.mem_Icc.mp hk, },
  { intros k hk,
    apply finset.mem_Icc.mp hk, },
  { intros k hk,
    apply finset.mem_Icc.mp hk, },
  { intros k hk,
    apply finset.mem_Icc.mp hk, },
  { intros k hk,
    apply finset.mem_Icc.mp
end

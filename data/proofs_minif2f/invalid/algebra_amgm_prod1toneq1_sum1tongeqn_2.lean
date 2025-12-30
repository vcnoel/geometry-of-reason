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

  -- 1.  a ≤ 1
  have h₁ : ∀ (i : ℕ), i ∈ finset.range(n) → a i ≤ 1,
  { intro i,
    rw finset.mem_range,
    intro hi,
    exact h₀ },
  -- 2.  n * 1/n ≥ n
  have h₂ : n * (1/n) ≥ n,
  { rw nat.cast_le,
    rw nat.cast_mul,
    rw nat.cast_inv,
    exact (le_refl n) },
  -- 3.  ∑[i ∈ range(n)] a i ≤ ∑[i ∈ range(n)] 1
  have h₃ : finset.sum (finset.range(n)) a ≤ finset.sum (finset.range(n)) (λ i _, 1),
  { apply finset.sum_le_sum,
    intro i,
    exact h₁ i },
  -- 4.  ∑[i ∈ range(n)] 1 = n
  have h₄ : finset.sum (finset.range(n)) (λ i _, 1) = n,
  { apply finset.sum_const,
    rw finset.card_range,
    exact n },
  --
end

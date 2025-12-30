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

  -- If the product of a sequence of numbers is 1, then each number is ≤ 1
  have h₁ : ∀ (i : ℕ), i ∈ finset.range(n) → a i ≤ 1,
  from λ (i : ℕ), λ (hi : i ∈ finset.range(n)),
  le_of_eq (finset.prod_eq_one_of_mem_mul_one (finset.mem_range.mpr hi) h₀),

  -- Apply the AM-GM inequality
  have h₂ : ∀ (i : ℕ), i ∈ finset.range(n) → a i ≥ 1 / n,
  from λ (i : ℕ), λ (hi : i ∈ finset.range(n)),
  amgm (finset.insert i finset.range(n)) (λ (j : ℕ), a j) (λ (j : ℕ), 1 / n) (λ (j : ℕ), finset.mem_insert.mp (finset.mem_range.mpr (finset.mem_insert_of_mem hi (finset.mem_range.mpr (finset.mem_range.mpr (finset.mem_range.mpr hi))))) j) (λ (j : ℕ), finset.mem_insert_of_mem (finset.mem_range.mpr (
end

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

  have h₁ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₂ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₃ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₄ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₅ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₆ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₇ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₈ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₉ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₁₀ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₁₁ := finset.prod_eq_one_of_mul_eq_one a (finset.range n),
  have h₁₂ := finset.prod_eq_one_of_mul_eq_one a (
end

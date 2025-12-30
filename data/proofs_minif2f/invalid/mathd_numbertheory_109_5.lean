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

  simp only [finset.sum_congr, finset.Icc_eq_range, finset.Ici_eq_range, finset.Ico_eq_range,
    sum_eq_single 100, sum_eq_single 1, h₀],
  -- Simplify the expression
  rw [← nat.sum_bit0, nat.sum_bit1, nat.sum_bit0],
  -- Use the fact that the sum of 2k-1 from k=1 to n is n^2
  rw [nat.sum_const_mul, nat.sum_const_mul, nat.sum_const_mul, nat.sum_const_mul],
  -- Simplify the expression
  rw [nat.pow_sub_one, nat.pow_sub_one, nat.pow_sub_one, nat.pow_sub_one],
  -- Use the fact that n^2 % 7 = n % 7
  rw [nat.pow_mod, nat.pow_mod, nat.pow_mod, nat.pow_mod],
  -- Simplify the expression
  rw [nat.mod_add, nat.mod_add, nat.mod_add, nat.mod_add],
  -- Use the fact that (n + 7k) % 7 = n % 7
  rw [nat.mod_add, nat.mod_add, nat.mod_add, nat.mod_add],
 
end

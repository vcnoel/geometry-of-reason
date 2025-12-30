import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_9div10tonm1
  (n : ℕ)
  (h₀ : 0 < n) :
  9 ∣ (10^n - 1) :=
begin

  induction n with n ih,
  { simp only [zero_sub, nat.pow_zero, sub_zero],
    exact (nine_div_three_mul_three_sub_three).mpr (nine_div_three_mul_three_sub_three) },
  { rw [nat.pow_succ, mul_add, sub_add, nat.pow_succ],
    exact (nine_div_three_mul_three_sub_three).mpr
      ((nine_div_three_mul_three_sub_three).mpr ih) }

end

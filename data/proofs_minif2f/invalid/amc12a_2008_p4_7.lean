import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  simp,
  refine prod_congr rfl (λ k hk, _),
  have : 4 * k ≠ 0, from nat.pos_of_ne_zero (ne_of_gt (by assumption)),
  rw [div_eq_mul_inv, mul_assoc, mul_comm 4, mul_assoc, mul_comm 4, mul_assoc, mul_comm 4],
  refine mul_congr rfl (show (4 * k)^2 / (4 * k) = 502, by
    refine eq.trans (by rw [mul_assoc, mul_comm 4, mul_assoc, mul_comm 4, mul_assoc, mul_comm 4])
      _,
    refine mul_congr rfl (show 4 * k = 502, by ring)),
  rw mul_inv_cancel this,
  refine eq.trans (by rw mul_one) _,
  refine mul_congr rfl (show 4 = 502, by ring),

end

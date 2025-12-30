import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  cases n,
  { rw finset.sum_empty,
    rw finset.range_empty,
    refl },
  { induction n with n ih,
    { rw finset.sum_insert,
      rw finset.range_insert,
      rw add_one,
      rw mul_one,
      rw mul_comm,
      rw mul_assoc,
      rw div_mul_eq_mul_div,
      rw add_assoc,
      rw add_comm,
      rw add_right_eq_self,
      rw add_zero,
      rw div_eq_mul_inv,
      rw mul_comm,
      rw mul_inv_cancel,
      rw one_mul,
      rw inv_one,
      refl },
    { rw finset.sum_insert,
      rw finset.range_insert,
      rw add_one,
      rw mul_one,
      rw mul_comm,
      rw mul_assoc,
      rw div_mul_eq_mul_div,
      rw add_assoc,
      rw add_comm,
      rw add_right_eq_self,
      rw add_zero,
      rw div_eq_mul_inv,
      rw mul_comm,
      rw mul_inv_cancel,
      rw one_mul,
      rw inv_one,
      rw ih } }

end

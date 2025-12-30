import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  induction n with n ih,
  {   -- n = 0
    rw nat.pow_zero,
    rw nat.mul_zero,
    rw nat.add_zero,
    exact nat.three_div_zero,
  },
  {   -- n > 0
    have h1 := ih,
    rw nat.pow_succ,
    rw nat.mul_succ,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add_assoc,
    rw nat.add_comm,
    rw nat.add
end

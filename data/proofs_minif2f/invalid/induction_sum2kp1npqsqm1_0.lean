import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum2kp1npqsqm1
  (n : ℕ) :
  ↑∑ k in (finset.range n), 2 * k + 3 = ↑(n + 1)^2 - (1:ℤ) :=
begin

  induction n generalizing (f := finset.range n),
  case nat.zero {
    rw finset.sum_empty,
    rw zero_power,
    rw nat.zero_sub,
    rw nat.succ_zero,
    rw nat.one_pow,
    rw nat.one_mul,
    rw nat.one_mul,
    rw nat.one_sub,
    rw zero_one,
  },
  case nat.succ n' {
    let f := finset.range (n' + 1),
    have h1 := congr_arg finset.sum (finset.ext _ _),
    have h2 := congr_arg finset.sum (finset.ext _ _),
    have h3 := congr_arg finset.sum (finset.ext _ _),
    have h4 := congr_arg finset.sum (finset.ext _ _),
    have h5 := congr_arg finset.sum (finset.ext _ _),
    have h6 := congr_arg finset.sum (finset.ext _ _),
    have h7 := congr_arg finset.sum (finset.ext _ _),
    have h8 := congr_arg finset.sum (finset.ext _ _),
    have h9 := congr_arg finset.sum (finset.ext _ _),
    have h10 := congr_arg
end

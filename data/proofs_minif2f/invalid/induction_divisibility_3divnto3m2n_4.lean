import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_divisibility_3divnto3m2n
  (n : ℕ) :
  3 ∣ n^3 + 2 * n :=
begin

  induction n generalizing m,
  case nat.zero {
    rw [pow_zero, zero_add, zero_mul],
    exact three_divs_zero,
  },
  case nat.succ m {
    have h := n_ih m,
    have h2 := n_ih m.succ,
    have h3 := congr_arg (λ x : ℕ, x.succ^3 + 2*x.succ) (congr_arg (λ x : ℕ, x.succ^3) (pow_succ m.succ 3)),
    have h4 := add_assoc,
    have h5 := add_comm (m.succ^3 + 2*m.succ) (m^3 + 2*m),
    have h6 := congr_arg (λ x : ℕ, x + (m^3 + 2*m)) (congr_arg (λ x : ℕ, m.succ^3) (pow_succ m.succ 3)),
    have h7 := congr_arg (λ x : ℕ, m.succ^3 + (m^3 + 2*m)) (congr_arg (λ x : ℕ, m.succ^3) (pow_succ m.succ 3)),
    have h8 := congr
end

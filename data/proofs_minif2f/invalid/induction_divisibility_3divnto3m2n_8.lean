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
  { rw [pow_zero, add_zero, mul_zero, nat.zero_div],
    exact nat.zero_div },
  { have h := ih,
    have h2 := add_right_cancel h,
    have h3 := mul_right_cancel h,
    have h4 := add_assoc,
    have h5 := add_assoc,
    have h6 := add_assoc,
    have h7 := add_assoc,
    have h8 := add_assoc,
    have h9 := add_assoc,
    have h10 := add_assoc,
    have h11 := add_assoc,
    have h12 := add_assoc,
    have h13 := add_assoc,
    have h14 := add_assoc,
    have h15 := add_assoc,
    have h16 := add_assoc,
    have h17 := add_assoc,
    have h18 := add_assoc,
    have h19 := add_assoc,
    have h20 := add_assoc,
    have h21 := add_assoc,
    have h22 := add_assoc,
    have h23 := add_assoc,
    have h24 := add_assoc,
    have h25 := add_assoc,
    have h26 := add_assoc,
    have h27 := add_assoc,
    have h28 := add_assoc
end

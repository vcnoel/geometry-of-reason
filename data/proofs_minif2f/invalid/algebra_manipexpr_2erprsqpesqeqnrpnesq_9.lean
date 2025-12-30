import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_manipexpr_2erprsqpesqeqnrpnesq
  (e r : ℂ) :
  2 * (e * r) + (e^2 + r^2) = (-r + (-e))^2 :=
begin

  -- 1 / 0
  have h1 := add_assoc (2 * e * r) (e^2) (r^2),
  have h2 := add_comm (e^2) (r^2),
  have h3 := add_comm (2 * e * r) (e^2 + r^2),
  have h4 := add_assoc (e^2) (r^2) (2 * e * r),
  have h5 := eq_comm (e^2 + r^2) (2 * e * r),
  have h6 := add_comm (e^2 + r^2) (2 * e * r),
  have h7 := add_comm (e^2) (r^2),
  have h8 := add_assoc (e^2) (r^2) (2 * e * r),
  have h9 := add_assoc (e^2 + r^2) (2 * e * r) 0,
  have h10 := eq_add_add (e^2 + r^2) (2 * e * r) 0,
  have h11 := add_assoc (2 * e * r) 0 (e^2
end

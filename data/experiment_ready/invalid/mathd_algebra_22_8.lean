import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_22 :
  real.logb (5^2) (5^4) = 2 :=
begin

  have h1 := real.logb_exp (5^2) (5^4),
  have h2 := exp_inj (real.logb (5^2) (5^4)),
  have h3 := exp_eq_exp_iff_eq (real.logb (5^2) (5^4)) (real.logb (5^2) (5^4)),
  have h4 := exp_real.logb_eq_log_real.exp (real.logb (5^2) (5^4)),
  have h5 := exp_real.logb_eq_log_real (real.logb (5^2) (5^4)),
  have h6 := exp_real.logb_eq_log_real.exp (2),
  have h7 := exp_real.logb_eq_log_real (2),
  have h8 := h7,
  have h9 := h8,
  have h10 := h9,
  have h11 := h10,
  have h12 := h11,
  have h13 := h12,
  have h14 := h13,
  have h15 := h14,
  have h16 := h15,
  have h17 := h16,
  have h18 := h17,
  have h19 :=
end

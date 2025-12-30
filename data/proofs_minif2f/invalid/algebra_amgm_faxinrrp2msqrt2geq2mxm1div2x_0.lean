import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intros x hx,
  have h1 : 0 < x, from hx,
  have h2 : 0 < 2 * x, from mul_pos h1 h1,
  have h3 : 0 < 2 - x, from sub_pos (2 * 0) (x * 0),
  have h4 : 0 < 2 - x - 1 / (2 * x), from sub_pos (2 - x) (1 / (2 * x)),
  have h5 : 2 * (2 - x) - 1 ≥ 0, from sub_nonneg (2 * (2 - x)) (1 * 0),
  have h6 : 2 * (2 - x) - 1 ≥ 1 / (2 * x), from
    
end

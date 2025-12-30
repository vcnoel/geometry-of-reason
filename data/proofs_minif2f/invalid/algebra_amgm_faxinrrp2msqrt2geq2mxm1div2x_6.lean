import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intro x,
  assume x0 : x > 0,
  have hx : 0 < x,
  from x0,

  have x_pos : 0 < x,
  from hx,

  have x_pos2 : 0 < x^2,
  from pow_pos x_pos 2,

  have x_pos4 : 0 < x^4,
  from pow_pos x_pos 4,

  have x_pos8 : 0 < x^8,
  from pow_pos x_pos 8,

  have x_pos16 : 0 < x^16,
  from pow_pos x_pos 16,

  have x_pos32 : 0 < x^32,
  from pow_pos x_pos 32,

  have x_pos64 : 0 < x^64,
  from pow_pos x_pos 64,

  have x_pos128 : 0 < x^128,
  from pow_pos x_pos 128,

  have x_pos256 : 0 < x^256,
  from pow_pos x_pos 256,

  have x_pos512 : 0 < x^512,
  from pow_pos x_pos 512,

  have x_pos1024 : 0 < x^1024,
 
end

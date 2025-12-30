import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intros x hx,
  have h2 := real.sqrt_pos 2,
  have h2geq1 := real.sqrt_ge 2 1,
  have h2gt1 := real.sqrt_gt 2 1,
  have h2pos := real.sqrt_pos 2,
  have h1pos := real.pos 1,
  have h2sq := real.sqrt_pow _ _ h2,
  have h1sq := real.sqrt_pow _ _ h1pos,
  have h1gt0 := real.sqrt_gt _ _ h1pos,
  have h1geq0 := real.sqrt_ge _ _ h1pos,
  have h1pos := real.pos 1,
  have h1gt0 := real.sqrt_gt _ _ h1pos,
  have h1geq0 := real.sqrt_ge _ _ h1pos,
  have h2geq1 := real.sqrt_ge 2 1,
  have h2gt1 := real.sqrt_gt 2 1,
  have h1pos := real.pos 1,
  have h1gt0 := real.sqrt_gt _ _ h1pos,
  have h1geq0 := real.sqrt_ge _ _ h1pos,
  have h2sq
end

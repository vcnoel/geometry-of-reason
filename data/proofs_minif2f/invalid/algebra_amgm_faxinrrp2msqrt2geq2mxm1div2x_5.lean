import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_faxinrrp2msqrt2geq2mxm1div2x :
  ∀ x > 0, 2 - real.sqrt 2 ≥ 2 - x - 1 / (2 * x) :=
begin

  intros x hx,
  have h2 := real.sqrt_pos.2 (by linarith),
  have hgeq := real.sqrt_le_csqrt (by linarith),
  have hgeq' := real.csqrt_le_sqrt (by linarith),
  have hleq := real.sqrt_le_sqrt (by linarith),
  have hleq' := real.csqrt_le_csqrt (by linarith),
  have h2mleq := real.cmul_le_cmul (by linarith) (by linarith),
  have h2mgeq := real.cmul_le_cmul (by linarith) (by linarith),
  have hsubleq := real.sub_le_sub (by linarith) (by linarith),
  have hsubgeq := real.sub_le_sub (by linarith) (by linarith),
  have hleq'' := real.sub_le_sub (by linarith) (by linarith),
  have hgeq'' := real.sub_le_sub (by linarith) (by linarith),
  have hleq''' := real.sub_le_sub (by linarith) (by linarith),
  have hgeq''' := real.sub_le_sub (by linarith) (
end

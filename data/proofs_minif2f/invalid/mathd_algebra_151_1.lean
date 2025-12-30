import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  let a := real.sqrt 27,
  let b := real.sqrt 26,
  have ha : a ≥ 0, by { apply real.sqrt_nonneg, exact 27, },
  have hb : b ≥ 0, by { apply real.sqrt_nonneg, exact 26, },
  have ha_le_5 : a ≤ 5, by { apply real.sqrt_le_csqrt, exact 27, },
  have hb_le_5 : b ≤ 5, by { apply real.sqrt_le_csqrt, exact 26, },
  have ha_ge_b : a ≥ b, by { apply real.sqrt_le_sqrt, exact (27, 26), },
  have hb_ge_a : b ≥ a, by { apply real.sqrt_le_sqrt, exact (26, 27), },
  have a_eq_b : a = b, by { apply real.eq_of_le_le ha_ge_b hb_ge_a, },
  have a_eq_5 : a = 5, by { apply real.eq_of_le_le ha_le_5 ha, },
  have b_eq_5 : b = 5, by { apply real.eq_of_le_le hb_le_5 hb, },
  have ab_eq_25 : a * b
end

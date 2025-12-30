import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  let a := 52 + 6 * real.sqrt 43,
  let b := 52 - 6 * real.sqrt 43,
  let r := real.sqrt 43,
  have ha : a^2 - b^2 = (52 + 6 * r)^2 - (52 - 6 * r)^2, by { rw [pow_sub, pow_add] },
  have hb : a^2 - b^2 = 52^2 - (6 * r)^2, by { rw [pow_sub, pow_add] },
  have hc : a^2 - b^2 = 52^2 - 36 * r^2, by { rw [pow_sub, pow_add] },
  have hd : a^2 - b^2 = 2704 - 36 * r^2, by { rw [pow_sub, pow_add] },
  have he : a^2 - b^2 = 2704 - 36 * 43, by { rw [pow_sub, pow_add] },
  have hf : a^2 - b^2 = 2704 - 1554, by { rw [pow_sub, pow_add] },
  have hg : a^
end

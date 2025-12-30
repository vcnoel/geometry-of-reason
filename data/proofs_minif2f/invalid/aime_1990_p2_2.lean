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
  let c := (3 : ℝ) / 2,
  have ha : a^c = (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2),
  { refl },
  have hb : b^c = (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2),
  { refl },
  have h1 : a^c - b^c = (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2),
  { rw [ha, hb] },
  have h2 : a^c - b^c = ((52 + 6 * real.sqrt 43) - (52 - 6 * real.sqrt 43))^c,
  { rw [sub_pow, sub_sub] },
  have h3 : a^c - b^c = (6 * real.sqrt 43)^c,
  { rw [sub_sub, sub_zero] },
  have h
end

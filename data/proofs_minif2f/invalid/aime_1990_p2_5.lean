import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1990_p2 :
  (52 + 6 * real.sqrt 43)^((3 : ℝ) / 2) - (52 - 6 * real.sqrt 43)^((3 : ℝ) / 2)  = 828 :=
begin

  have h1 : (52 + 6 * real.sqrt 43)^(3/2) = (real.sqrt (52 + 6 * real.sqrt 43))^3, by {
    rw [pow_half, pow_three],
  },
  have h2 : (52 - 6 * real.sqrt 43)^(3/2) = (real.sqrt (52 - 6 * real.sqrt 43))^3, by {
    rw [pow_half, pow_three],
  },
  have h3 : (real.sqrt (52 + 6 * real.sqrt 43))^3 - (real.sqrt (52 - 6 * real.sqrt 43))^3 = 828, by {
    -- use binomial theorem to expand the square roots
    have h4 : (real.sqrt (52 + 6 * real.sqrt 43))^3 - (real.sqrt (52 - 6 * real.sqrt 43))^3 = ∑ k in range (3 + 1), (3:ℝ).choose k * (real.sqrt (52 + 6 * real.sqrt 43))^ (3 - k) * (-(real.sqrt (52 - 6 * real.sqrt 43)))^k, by {
      rw [
end

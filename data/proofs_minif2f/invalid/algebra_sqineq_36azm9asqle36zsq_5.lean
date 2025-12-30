import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  have h1 : ∀ (a : ℝ), 0 ≤ a^2, from λ (a : ℝ), pow_nonneg a 2,
  have h2 : ∀ (a : ℝ), 0 ≤ a * a, from λ (a : ℝ), mul_nonneg a a,
  have h3 : ∀ (a : ℝ), a * a ≤ a^2, from λ (a : ℝ), le_of_eq (pow_two a),
  have h4 : ∀ (a : ℝ), a * a = a^2, from λ (a : ℝ), pow_two a,
  have h5 : ∀ (a : ℝ), a^2 = a * a, from λ (a : ℝ), pow_two a,
  have h6 : ∀ (a : ℝ), a * a = a * a, from λ (a : ℝ), rfl,
  have h7 : ∀ (a : ℝ), 36 * a * z - 9 * a * a ≤ 36 * z * z, from
    calc 36 * a * z - 9 * a * a ≤ 36 * z * z
      : by linarith [h3 a, h1 a,
end

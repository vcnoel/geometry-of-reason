import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  -- We have a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c
  -- ⇔  a^2 * c^2 + b^2 * a^2 + b^2 * c^2 ≥ b * c * a + c * b * a + a * b * c
  -- ⇔  a^2 * c^2 + b^2 * a^2 + b^2 * c^2 - b * c * a - c * b * a - a * b * c ≥ 0
  -- ⇔  a^2 * c^2 - b * c * a + b^2 * a^2 - c * b * a + b^2 * c^2 - a * b * c ≥ 0
  -- ⇔  a^2 * c^2 - b * c * a + b^2 * a^2 - c * b * a + b^2 * c^2 - a * b * c ≥ 0
  -- ⇔  (a^2 * c^2 - b * c * a
end

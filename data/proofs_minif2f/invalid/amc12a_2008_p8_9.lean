import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  apply_rules [real.sqrt_eq_zero_iff_nonpos, real.sqrt_eq_one_iff_pos],
  have h₃ : 6 * y^2 = 2 * (6 * y^2), by apply_rules [eq.refl, mul_two],
  have h₄ : 6 * x^2 = 2 * (6 * y^2), by apply_rules [eq.trans h₂, h₃],
  have h₅ : 6 * x^2 = 2 * (6 * y^2), by apply_rules [eq.refl, mul_two],
  have h₆ : x^2 = 2 * y^2, by apply_rules [eq.trans h₄, h₅],
  have h₇ : x^3 = 2 * x * y^2, by apply_rules [mul_assoc, mul_comm, eq.trans h₆, mul_assoc],
  have h₈ : x^3 = 2 * real.sqrt 2 * real.sqrt 2 * y^2, by apply_rules [eq.trans h₇, real.sqrt_mul, real.sqrt_mul],
  have h₉ : x^3 = 2 * real.sqrt 2 * y^2
end

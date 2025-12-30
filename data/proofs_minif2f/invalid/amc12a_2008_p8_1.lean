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

  have h₃ : 6 * x^2 = 6 * y^2,
  from (eq_of_mul_eq_mul_left (ne_of_gt h₀.1) h₂).symm,
  have h₄ : x^2 = y^2,
  from (eq_of_mul_eq_mul_left (ne_of_gt h₀.1) h₃).symm,
  have h₅ : x = y,
  from (eq_of_mul_eq_mul_left (ne_of_gt h₀.1) h₄).symm,
  have h₆ : x^3 = y^3,
  from (pow_of_eq h₅),
  have h₇ : x^3 = 1,
  from (eq_of_eq h₁ h₆),
  have h₈ : x = 1,
  from (eq_of_pow_eq_one h₇),
  have h₉ : x = real.sqrt 2,
  from (eq_of_real_sqrt_eq h₈),
  have h₁₀ : x^3 = 2 * real.sqrt 2,
  from (pow_of_eq h₉),
  exact h₁₀,

end

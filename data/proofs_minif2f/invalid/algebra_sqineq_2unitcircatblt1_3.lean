import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_2unitcircatblt1
  (a b : ℝ)
  (h₀ : a^2 + b^2 = 2) :
  a * b ≤ 1 :=
begin

  have h₁ : 2 * a * b = (a^2 + b^2) - (a^2 - 2*a*b + b^2),
    by { ring, },
  have h₂ : 2 * a * b ≤ 0,
    by { rw h₁, exact (sub_nonpos_of_le h₀ (sub_nonneg_of_le (pow_nonneg a 2) (pow_nonneg b 2))).trans (zero_le 1), },
  have h₃ : a * b ≤ 0,
    by { exact div_nonpos_of_nonneg_nonpos (pow_nonneg a 2) (pow_nonneg b 2) h₂, },
  have h₄ : a * b ≤ 1,
    by { rw abs_mul, exact (abs_nonneg a).trans (abs_nonneg b).trans (abs_nonneg (a * b)), },
  exact h₃.trans h₄,

end

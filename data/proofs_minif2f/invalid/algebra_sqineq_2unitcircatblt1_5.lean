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

  have h₁ : a^2 * b^2 = 2 * a^2 * b^2 / 2,
    by { rw mul_comm a b, simp },
  have h₂ : (a^2 * b^2) ≤ (2 * a^2 * b^2) / 2,
    by { apply mul_nonpos_of_nonpos_nonpos,
        apply mul_nonpos_of_nonpos_nonpos,
        apply mul_nonpos_of_nonpos_nonpos,
        apply mul_nonpos_of_nonpos_nonpos,
        apply h₁ },
  have h₃ : 0 ≤ a^2 * b^2,
    by { apply mul_nonneg_of_nonneg_nonneg,
        apply mul_nonneg_of_nonneg_nonneg,
        apply mul_nonneg_of_nonneg_nonneg,
        apply mul_nonneg_of_nonneg_nonneg,
        apply h₁ },
  have h₄ : (a * b)^2 = a^2 * b^2,
    by { rw pow_two },
  have h₅ : (a * b)^2 ≤ (2 * a^2 * b^2) / 2,
    by { apply h₂ },
  have h₆ : (
end

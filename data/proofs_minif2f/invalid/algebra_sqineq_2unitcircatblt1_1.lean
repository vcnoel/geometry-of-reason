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

  have h₁ : (a * b)^2 ≤ a^2 + b^2,
    by { apply pow_two_le_sum_squares },
  have h₂ : (a * b)^2 = 2,
    by { rw [h₀] },
  have h₃ : a * b ≤ 1,
    by { apply sqrt_le_sqrt },
  exact h₃,

end

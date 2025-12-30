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

  -- first, let's rewrite the equation h₀ in terms of a and b
  have h₁ : a^2 + b^2 = 2,
    from h₀,

  -- now, let's take the square root of both sides of the equation h₁
  have h₂ : a^2 + b^2 ≥ 0,
    from le_sqrt_of_nonneg (a^2 + b^2),

  -- now, let's take the square root of both sides of the equation h₂
  have h₃ : a^2 + b^2 ≥ 0,
    from le_sqrt_of_nonneg (a^2 + b^2),

  -- now, let's use the AM-GM inequality on a^2 + b^2
  have h₄ : a^2 + b^2 ≥ 2 * a * b,
    by { apply le_of_mul_le_mul_left, exact a * b },

  -- now, let's substitute h₁ into h₄
  have h₅ : 2 ≥ 2 * a * b,
    from le_trans h₁ h₄,

  -- now, let's divide both sides of the equation h₅ by 
end

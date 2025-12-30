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

  -- first, note that we can square both sides of the inequality without changing the direction of the inequality
  -- we will use this fact below to eliminate the square root of a^2 + b^2
  have h₁ : (a^2 + b^2)^2 ≥ (a^2 + b^2),
    by linarith,

  -- now we can use this fact to show that 2a^2 + 2b^2 ≥ 2
  have h₂ : 2*a^2 + 2*b^2 ≥ 2,
    by linarith,

  -- now we can use this fact to show that a^2 + b^2 ≥ 1
  have h₃ : a^2 + b^2 ≥ 1,
    by linarith,

  -- now we can use this fact to show that a * b ≤ 1
  have h₄ : a * b ≤ 1,
    by linarith,

  -- now we can use this fact to show that a * b ≤ 1
  show a * b ≤ 1,
    by linarith

end

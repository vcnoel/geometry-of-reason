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

  -- 1. 2ab = 2 - (a^2 + b^2)
  have h₁ : 2 * a * b = 2 - (a^2 + b^2),
  { rw h₀, },
  -- 2. 2ab = 2 - 2
  have h₂ : 2 * a * b = 2 - 2,
  { rw h₁, },
  -- 3. 2ab = 0
  have h₃ : 2 * a * b = 0,
  { rw h₂, },
  -- 4. ab = 0
  have h₄ : a * b = 0,
  { rw h₃, },
  -- 5. ab ≤ 1
  have h₅ : a * b ≤ 1,
  { rw h₄, exact le_refl 0, },
  exact h₅,

end

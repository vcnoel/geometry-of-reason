import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2017_p2
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x + y = 4 * (x * y)) :
  1 / x + 1 / y = 4 :=
begin

  -- 1 / x + 1 / y = (x + y) / (x * y)
  have h₃ : 1 / x + 1 / y = (x + y) / (x * y),
  { ring },
  -- (x + y) / (x * y) = 4
  have h₄ : (x + y) / (x * y) = 4,
  { rw h₂ },
  -- 1 / x + 1 / y = 4
  have h₅ : 1 / x + 1 / y = 4,
  { rw h₃, rw h₄ },
  exact h₅

end

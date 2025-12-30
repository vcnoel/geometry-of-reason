import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2011_p18
  (x y : ℝ)
  (h₀ : abs (x + y) + abs (x - y) = 2) :
  x^2 - 6 * x + y^2 ≤ 9 :=
begin

  -- Let's start by considering the square of x + y
  have h₁ : (x + y)^2 = (x + y) * (x + y),
  by { refl },
  -- And the square of x - y
  have h₂ : (x - y)^2 = (x - y) * (x - y),
  by { refl },
  -- By expanding the squares, we get the following expressions
  have h₃ : (x + y)^2 = x^2 + 2*x*y + y^2,
  by { ring },
  have h₄ : (x - y)^2 = x^2 - 2*x*y + y^2,
  by { ring },
  -- We can now rewrite the given equation using the expanded expressions
  have h₅ : x^2 + 2*x*y + y^2 + x^2 - 2*x*y + y^2 = 4,
  by { rw [h₃, h₄], exact h₀ },
  -- Simplifying the equation gives us the following expression
  have h₆ : 2*x^2 + 2*y^2 = 4,
  by { ring
end

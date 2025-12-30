import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p9
  (f : ℝ → ℝ)
  (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x / y)
  (h₁ : f 500 = 3) : f 600 = 5 / 2 :=
begin

  -- We can rewrite the problem statement as a system of equations.
  have h₂ : f 600 = f (500 + 100), by refl,
  have h₃ : f (500 + 100) = f 500 + f 100, by rw [f_add],
  have h₄ : f 500 = 3, by assumption,
  have h₅ : f 100 = 1/2, by apply_instance,
  have h₆ : f 600 = 3 + 1/2, by { rw [h₂, h₃, h₄, h₅], refl },
  have h₇ : f 600 = 7/2, by { rw [h₆], refl },
  have h₈ : f 600 = 5/2, by { rw [h₇], refl },
  exact h₈,

end

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

  -- We are given that |x + y| + |x - y| = 2.
  have h₁ : (x + y) * (x - y) = (x^2 - y^2) = (x + y) * (x - y),
  by { rw abs_eq_abs, rw abs_eq_abs, rw abs_eq_abs, rw abs_eq_abs, rw abs_eq_abs, rw abs_eq_abs },
  have h₂ : x^2 - y^2 = 0,
  by { rw h₁, refl },
  have h₃ : x^2 - y^2 = 0,
  by { rw h₂, refl },
  have h₄ : x^2 - y^2 = 0,
  by { rw h₃, refl },
  have h₅ : x^2 - y^2 = 0,
  by { rw h₄, refl },
  have h₆ : x^2 - y^2 = 0,
  by { rw h₅, refl },
  have h₇ : x^2 - y^2 = 0,
  by { rw h₆, refl },
  have h₈ : x
end

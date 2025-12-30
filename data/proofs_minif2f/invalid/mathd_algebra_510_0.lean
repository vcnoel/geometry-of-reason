import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  -- Square both sides of the equation.
  have h₂ : x^2 + y^2 = 169 := by {
    calc
      x^2 + y^2 = (x + y)^2 - 2*x*y : by ring
     ... = 13^2 - 2*24 : by { rw [h₀], ring }
     ... = 169 : by ring
  },
  -- Take the square root of both sides.
  have h₃ : real.sqrt (x^2 + y^2) = real.sqrt 169 := by { rw h₂ },
  -- Apply the property of square roots to the right side.
  have h₄ : real.sqrt 169 = 13 := by { rw real.sqrt_def, exact (13 : ℝ)^2 = 169 },
  -- Conclude the proof by rewriting the left side and applying the previous equation.
  exact h₃.trans h₄

end

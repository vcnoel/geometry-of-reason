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

  have h₁ : abs (x + y) = abs (x - y),
  { rw abs_eq_abs_sub at h₀,
    exact h₀ },
  have h₂ : (x + y) * (x - y) = 0,
  { rw mul_eq_zero,
    exact h₁ },
  have h₃ : x * y = 0,
  { have h₃_1 : (x - y) * (x + y) = 0,
    { rw mul_comm,
      exact h₂ },
    have h₃_2 : x^2 - y^2 = 0,
    { rw sub_eq_zero,
      exact h₃_1 },
    have h₃_3 : (x - y) * (x + y) = x^2 - y^2,
    { rw mul_sub,
      exact h₃_2 },
    exact h₃_3 },
  have h₄ : x^2 - 6 * x + y^2 = (x - 3)^2 + y^2 - 9,
  { have h₄_1 : x^2 - 6 * x = (x - 3)^2,
    { rw pow_sub
end

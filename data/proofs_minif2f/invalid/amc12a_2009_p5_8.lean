import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p5
  (x : ℝ)
  (h₀ : x^3 - (x + 1) * (x - 1) * x = 5) :
  x^3 = 125 :=
begin

  have h₁ : x^3 - x^4 + x^2 = 5,
  { rw [pow_sub, pow_mul, pow_one],
    exact h₀ },
  have h₂ : x^3 - x^4 + x^2 = x^2 (x - 1) + x^2,
  { rw [pow_sub, pow_mul, pow_one],
    simp },
  have h₃ : 5 = x^2 (x - 1) + x^2,
  { exact h₁ },
  have h₄ : 5 = x^2 (x - 1 + 1),
  { rw [add_sub, pow_one],
    exact h₃ },
  have h₅ : 5 = x^2 * x,
  { rw [add_sub, pow_one],
    exact h₄ },
  have h₆ : 5 = x^3,
  { rw [mul_comm],
    exact h₅ },
  have h₇ : x^3 = 125,
  { rw [pow_five],
    exact h₆ },
  exact h₇

end

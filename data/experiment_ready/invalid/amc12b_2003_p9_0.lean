import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p9
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * x + b)
  (h₁ : f 6 - f 2 = 12) :
  f 12 - f 2 = 30 :=
begin

  have h₂ : f 6 - f 2 = a * (6 - 2),
  by rw [h₀, h₀],
  have h₃ : f 12 - f 2 = a * (12 - 2),
  by rw [h₀, h₀],
  have h₄ : f 12 - f 2 = a * 10,
  by rw [h₃, h₂, h₁],
  have h₅ : a = 3,
  by { rw [h₁, h₂, h₄], simp },
  have h₆ : f 12 - f 2 = 3 * (12 - 2),
  by rw [h₀, h₀, h₅],
  have h₇ : f 12 - f 2 = 30,
  by { rw [h₆], simp },
  exact h₇,

end

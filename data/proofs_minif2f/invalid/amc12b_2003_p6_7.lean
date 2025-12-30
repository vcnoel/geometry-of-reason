import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p6
  (a r : ℝ)
  (u : ℕ → ℝ)
  (h₀ : ∀ k, u k = a * r^k)
  (h₁ : u 1 = 2)
  (h₂ : u 3 = 6) :
  u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3) :=
begin

  have h₃ : u 0 = a, by { rw h₀, simp },
  have h₄ : a * r^1 = 2, by { rw h₁, simp },
  have h₅ : a * r^3 = 6, by { rw h₂, simp },
  have h₆ : a * r^2 = 2 / r, by { rw h₄, simp [pow_two], },
  have h₇ : r^2 = 3 / 2, by { rw h₆, simp [h₄] },
  have h₈ : r = ±(real.sqrt 3 / 2), by { rw h₇, simp [pow_two] },
  have h₉ : a = 4 / 3, by { rw h₄, simp [h₈] },
  have h₁₀ : u 0 = 4 / 3, by { rw h₃, simp [h₉] },
  have h₁₁ : 2 / real.sqrt 3 = 4 / 3, by { field_simp },
  have h₁₂ : u 0 = 2 / real.sqrt 3
end

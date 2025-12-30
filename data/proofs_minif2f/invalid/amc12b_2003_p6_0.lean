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

  have h₃ : u 2 = 3 * r ^ 2,
  { rw [h₀, h₀, h₀], },
  have h₄ : u 3 = u 2 + u 1,
  { rw [h₀, h₀, h₀, h₀, h₀], },
  have h₅ : u 2 = 2 + r ^ 2,
  { rw [h₃, h₁], },
  have h₆ : u 3 = 8 + r ^ 2,
  { rw [h₄, h₅, h₁], },
  have h₇ : r ^ 2 = 2,
  { rw [h₂, h₆], },
  have h₈ : r = ±√2,
  { exact sqrt_pos (0 : ℝ) h₇, },
  have h₉ : u 3 = 6,
  { rw [h₂, h₈], },
  have h₁₀ : u 2 = 2 + 2,
  { rw [h₅, h₈], },
  have h₁₁ : u 2 = 4,
  { exact h
end

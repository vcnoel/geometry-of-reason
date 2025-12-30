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

  have h₃ : u 0 = a * 1,
  by simp only [h₀, a, r, zero_power, one_mul],
  have h₄ : u 2 = a * r^2,
  by simp only [h₀, a, r, two_power_two],
  have h₅ : u 2 + u 0 = 2,
  by simp only [h₁],
  have h₆ : u 2 + u 0 = a * r^2 + a * 1,
  by simp only [h₃, h₄],
  have h₇ : a * r^2 + a * 1 = 2,
  by simp only [h₅, h₆],
  have h₈ : a * (r^2 + 1) = 2,
  by simp only [h₇],
  have h₉ : r^2 + 1 = 3,
  by simp only [r, three],
  have h₁₀ : a = 2 / 3,
  by simp only [h₈, h₉, inv_div, mul_one],
  have h₁₁ : u 0 =
end

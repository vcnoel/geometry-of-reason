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

  by_cases h₃ : r = 1 / real.sqrt 3,
  { have h₄ : u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3),
    by { rw [h₀ 0, h₁, h₂, h₃, h₀ 1, h₀ 2, h₀ 3],
      split,
      { have h₅ : (real.sqrt 3)^3 = 3,
        by { rw [real.sqrt_pow, pow_one, real.sqrt_pow, pow_two, real.sqrt_mul, real.sqrt_pow],
              simp },
        have h₆ : real.sqrt 3 ≠ 0,
        by { intro h₇, have h₈ : (real.sqrt 3)^3 = 0,
          by { rw [h₇] },
          have h₉ : 3 = 0,
          by { rw [h₅, h₈] },
          contradiction },
        have h₁₀ : 1 / real.sqrt 3 ≠ 0,
        by { intro h₁₁, have h₁₂ : real.sqrt 3 = 0,
          by { rw [h₁₁
end

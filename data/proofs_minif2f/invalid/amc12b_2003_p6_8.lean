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

  by_cases h₃ : r = 0,
  { cases h₁ with h₁ h₁',
    { exact absurd h₁ rfl },
    { exact absurd h₁ rfl } },
  by_cases h₄ : r = 1,
  { exact absurd h₄ (real.sqrt_pos.mpr (ne_of_gt (half_pos r_pos))) },
  by_cases h₅ : r = - 1,
  { exact absurd h₅ (real.sqrt_pos.mpr (neg_one_ne_zero.mpr (ne_of_gt (half_pos r_pos)))) },
  by_cases h₆ : r = real.sqrt 3,
  { have h₇ : u 0 = 2 / real.sqrt 3,
    { have h₈ : u 1 = 2,
      { apply h₁ },
    have h₉ : u 2 = 6,
      { have h₁₀ : u 2 = a * r^2,
        { apply h₀ },
        have h₁₁ : r^2 = real.sqrt 3,
        { have h₁₂ : r^2 = (real.sqrt 3)^2,
          { rw pow_two },
        have h₁₃ : (real
end

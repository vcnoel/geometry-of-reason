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

  cases h₀ 0 with h₃ h₃,
  { have h₄ := h₀ 1,
    have h₅ := h₀ 3,
    have h₆ := h₁,
    have h₇ := h₂,
    have h₈ : a * r^0 = 2 / real.sqrt 3 ∨ a * r^0 = - (2 / real.sqrt 3),
    { cases h₃ with h₃ h₃,
      { have h₉ := h₃,
        have h₁₀ : a = 2 / real.sqrt 3,
        { rw h₉ at h₄,
          have h₁₁ : r^1 = 1,
          { rw h₄,
            exact h₆ },
          have h₁₂ : r^0 = 1,
          { rw h₁₁,
            exact pow_one r },
          have h₁₃ : a * r^0 = a,
          { rw h₁₂,
            exact mul_one a },
          have h₁₄ : a = 2 / real.sqrt 3,
          { rw h₁₃,
            exact h₄ },
          exact h₁₄ },
        have h₁
end

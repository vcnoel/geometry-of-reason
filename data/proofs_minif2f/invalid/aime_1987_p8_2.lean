import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1987_p8
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : ∃! k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13) :
  n ≤ 112 :=
begin

  by_cases h₂ : (n : ℝ) / (n + 8) < 7 / 13,
  { let k : ℕ := 8,
    have hk : (n : ℝ) / (n + k) < 7 / 13,
      by { convert h₂, },
    have hk' : (8 : ℝ) / 15 < n / (n + k),
      by { simp only [hk, k] },
    exact h₁ hk hk' },
  { have h₃ : (n : ℝ) / (n + 8) ≥ 7 / 13,
      by { convert h₂, },
    have h₄ : (n : ℝ) / (n + 8) < 8 / 15,
      by { simp only [h₃, n] },
    have h₅ : (n + 1 : ℝ) / (n + 9) < 7 / 13,
      by { simp only [h₄, n.succ] },
    have h₆ : (8 : ℝ) / 15 < (n + 1) / (n + 9),
      by { simp only [h₅,
end

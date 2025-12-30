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

  by_cases h₂ : ∃ k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13,
  { have h₃ : ∃ k, (8 : ℝ) / 15 < n / (n + k) ∧ (n : ℝ) / (n + k) < 7 / 13,
    from h₂,
    have h₄ : ∃ k, (n : ℝ) / (n + k) < 7 / 13,
    from h₃.2,
    have h₅ : ∃ k, (n : ℝ) / (n + k) < 1,
    from h₄,
    have h₆ : ∃ k, (n : ℝ) / (n + k) < 1,
    from h₅,
    have h₇ : ∃ k, (n : ℝ) / (n + k) = 1,
    from h₆,
    have h₈ : ∃ k, (n : ℝ) / (n + k) = 1,
    from h₇,
    have
end

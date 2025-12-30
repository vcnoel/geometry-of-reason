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

  have h₂ : ∃! k, (8 / 15) < n / (n + k) ∧ (n / (n + k)) < (7 / 13),
  from h₁,
  have h₃ : ∃ k, (8 / 15) < n / (n + k) ∧ (n / (n + k)) < (7 / 13),
  from h₂.exists,

  cases h₃ with k hk,
  have h₄ : (8 / 15) < n / (n + k) ∧ (n / (n + k)) < (7 / 13),
  from hk,

  have h₅ : (8 / 15) * (n + k) < n ∧ n < (7 / 13) * (n + k),
  from mul_add_sub_right h₄,

  have h₆ : (8 / 15) * n + (8 / 15) * k < n ∧ n < (7 / 13) * n + (7 / 13) * k,
  from mul_add_sub_right h₅,

  have h₇ : (8 / 15) * n < n ∧
end

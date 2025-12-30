import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p25
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : 0 < b)
  (h₁ : ∀ x, f x = real.sqrt (a * x^2 + b * x))
  (h₂ : {x | 0 ≤ f x} = f '' {x | 0 ≤ f x}) :
  a = 0 ∨ a = -4 :=
begin

  have h₃ : ∀ x, a * x^2 + b * x ≥ 0,
  { intro x,
    rw [h₁, ← sq_nonneg],
    exact sq_nonneg (a * x^2 + b * x) },
  have h₄ : ∀ x, 0 ≤ f x,
  { intro x,
    exact h₂ x },
  have h₅ : ∀ x, 0 ≤ a * x^2 + b * x,
  { intro x,
    exact h₃ x },
  have h₆ : ∀ x, 0 ≤ a * x^2,
  { intro x,
    exact le_of_add_le_zero (h₅ x) },
  have h₇ : ∀ x, 0 ≤ x^2,
  { intro x,
    exact sq_nonneg x },
  have h₈ : ∀ x, 0 ≤ a,
  { intro x,
    exact le_of_mul_le_one (h₆ x) (h₇ x) },
  have h₉ : ∀ x, f x ≥ 0,
  { intro x,
    exact h₄ x },
  have h₁₀ : ∀ x, a * x
end

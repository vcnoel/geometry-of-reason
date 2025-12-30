import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ : 4 = 2^2,
  { refl },
  have h₂ : 2^2 ≤ y,
  { rw [h₁, h₀] },
  have h₃ : 2^2 ≤ x^2 - 6 * x + 13,
  { exact h₂ },
  have h₄ : 2^2 - 6 * x ≤ x^2 - 6 * x + 13,
  { exact h₃ },
  have h₅ : 2^2 - 6 * x ≤ x^2 - 6 * x,
  { exact h₄ },
  have h₆ : 2^2 ≤ x^2,
  { exact h₅ },
  have h₇ : 2^2 ≤ x^2 - 6 * x + 9,
  { exact h₆ },
  have h₈ : 2^2 ≤ (x - 3)^2,
  { exact h₇ },
  have h₉ : 2^2 ≤ (x - 3)^2,
  { exact h₈ },
  have h₁₀ : 2^2 - 9 ≤ (x - 
end

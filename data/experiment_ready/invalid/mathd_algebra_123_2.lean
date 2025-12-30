import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_123
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 20)
  (h₂ : a = 3 * b) :
  a - b = 10 :=
begin

  have h₃ : 20 = 3 * b + b,
  { rw [h₂] },
  have h₄ : 20 = 4 * b,
  { rw [h₃] },
  have h₅ : b = 20 / 4,
  { rw [h₄] },
  have h₆ : b = 5,
  { rw [h₅] },
  have h₇ : a = 3 * 5,
  { rw [h₂] },
  have h₈ : a = 15,
  { rw [h₇] },
  have h₉ : a - b = 15 - 5,
  { rw [h₈, h₆] },
  have h₁₀ : a - b = 10,
  { rw [h₉] },
  exact h₁₀,

end

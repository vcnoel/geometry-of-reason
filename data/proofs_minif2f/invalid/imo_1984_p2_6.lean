import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem imo_1984_p2
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : ¬ 7 ∣ a)
  (h₂ : ¬ 7 ∣ b)
  (h₃ : ¬ 7 ∣ (a + b))
  (h₄ : (7^7) ∣ ((a + b)^7 - a^7 - b^7)) :
  19 ≤ a + b :=
begin

  have h₅ : 7 ∣ (a + b)^7 - a^7 - b^7,
  { exact h₄ },
  have h₆ : 7 ∣ (a + b)^7,
  { apply h₅, exact h₃ },
  have h₇ : 7 ∣ a^7,
  { apply h₅, exact h₁ },
  have h₈ : 7 ∣ b^7,
  { apply h₅, exact h₂ },
  have h₉ : 7 ∣ (a + b)^7 - a^7,
  { apply h₆, exact h₇ },
  have h₁₀ : 7 ∣ (a + b)^7 - b^7,
  { apply h₆, exact h₈ },
  have h₁₁ : 7 ∣ a + b,
  { exact h₉ },
  have h₁₂ : 7 ∣ b,
  { exact h₁₀ },
  have h₁₃ : 7 ∣ a,
  { exact h₁₁ },
  have h₁₄ : 7 ∣ (a + b),
  { exact h₁
end

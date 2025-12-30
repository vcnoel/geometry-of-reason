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

  have h₅ : (7^7) ∣ ((a + b)^7 - a^7 - b^7 - 7 * (a^6 * b + a * b^6)),
  by
  { apply h₄ },
  have h₆ : (7^7) ∣ (7 * (a^6 * b + a * b^6)),
  by
  { apply h₅ },
  have h₇ : (7^6) ∣ (a^6 * b + a * b^6),
  by
  { apply h₆ },
  have h₈ : (7^6) ∣ (a^6 * b),
  by
  { apply h₇ },
  have h₉ : (7^6) ∣ (a^6),
  by
  { apply h₈ },
  have h₁₀ : (7^6) ∣ (a^6 - 1),
  by
  { apply h₉ },
  have h₁₁ : (7^6) ∣ (a^6 - 1),
  by
  { apply h₁₀ },
  have h₁₂ : (
end

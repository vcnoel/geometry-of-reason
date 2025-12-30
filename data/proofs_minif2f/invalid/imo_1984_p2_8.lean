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

  have h₅ : a + b ≠ 0,
    from (not_and.mp h₀).elim,
  have h₆ : (7^7) ∣ (a^7 - a^7),
  { apply divides_zero },
  have h₇ : (7^7) ∣ (b^7 - b^7),
  { apply divides_zero },
  have h₈ : (7^7) ∣ ((a + b)^7 - a^7 - b^7 - (a^7 - a^7) - (b^7 - b^7)),
  { apply h₄ },
  have h₉ : (7^7) ∣ ((a + b)^7 - a^7 - b^7),
  { apply h₈ },
  have h₁₀ : 7 ∣ (a + b),
  { apply h₉ },
  have h₁₁ : ¬ 7 ∣ (a + b),
  { exact h₃ },
  have h₁₂ : false,
    from (h₁₀ h₁₁),
  have h₁₃ : 19 ≤ a + b,
    from h₁₂.elim,
  exact h₁
end

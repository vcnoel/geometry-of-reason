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

  have h₅ : 7 ∣ (a^7 + b^7),
  by { rw [← seven_pow_add, ← seven_pow_sub], exact h₃ },
  have h₆ : 7 ∣ ((a + b)^7 - a^7 - b^7),
  by { rw [← seven_pow_add, ← seven_pow_sub, ← seven_pow_add], exact h₄ },
  have h₇ : (a + b) ≠ 0,
  from not_le_of_gt (Nat.succ_pos 0) (Nat.le_of_eq h₅ h₆),
  have h₈ : ¬ 7 ∣ (a + b) ≠ True,
  from ne_of_gt (Nat.succ_pos 0) h₇,
  have h₉ : ¬ ¬ 7 ∣ (a + b),
  by { rw [not_not], exact h₈ },
  have h₁₀ : ¬ 7 ∣ (a + b),
  by { rw [not_not], exact h₉ },
  have h₁₁ : ¬ 7 ∣ (a + b) = h₁₀,
  by refl,
  have h₁₂ : ¬
end

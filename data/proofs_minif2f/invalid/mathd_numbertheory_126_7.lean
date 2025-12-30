import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_126
  (x a : ℕ)
  (h₀ : 0 < x ∧ 0 < a)
  (h₁ : nat.gcd a 40 = x + 3)
  (h₂ : nat.lcm a 40 = x * (x + 3))
  (h₃ : ∀ b : ℕ, 0 < b → nat.gcd b 40 = x + 3 ∧ nat.lcm b 40 = x * (x + 3) → a ≤ b) :
  a = 8 :=
begin

  cases h₀ with h₄ h₅,
  have h₆ : a = 8,
  { rw h₁,
    have h₇ : x + 3 = 8,
    { rw h₂,
      have h₈ : x * (x + 3) = 8 * 8,
      { rw h₃,
        have h₉ : x = 8,
        { apply nat.exists_eq_of_abs_eq,
          have h₁₀ : 8 * (8 + 3) = 8 * 8 + 8 * 3,
          { ring },
          have h₁₁ : 8 * 8 + 8 * 3 = 64 + 24,
          { ring },
          have h₁₂ : 64 + 24 = 88,
          { ring },
          have h₁₃ : 88 = 8 * 11,
          { ring },
          have h₁₄ : 8 * 11 = 8 * 8 + 8 * 3,
          { ring },
          have h₁₅ : 8 * 8 + 8 * 3 = 8 * (8 + 3),
          { ring },

end

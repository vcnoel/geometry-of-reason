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

  have h₄ : 40 = 8 * 5, by ring,
  have h₅ : nat.lcm a 40 = a * 5, by rw [h₂, h₄],
  have h₆ : nat.gcd a 40 = 5, by rw [h₁, h₄],
  have h₇ : 0 < 5 ∧ 0 < a, by split; exact h₀.right,
  have h₈ : nat.gcd a 5 = 1, by
  { have h₉ : a = 8 ∨ a = 5, by
    { have h₁₀ : a = 8 ∨ a = 5 ∨ a = 20, by
      { refine nat.exists_gcd_eq_left 5 40,
        exact (h₃ 40 h₄ h₁ h₂).left },
      exact nat.exists_gcd_eq_left 5 40 h₁₀ },
    have h₁₁ : a = 8, by
    { have h₁₂ : 5 ∣ a, by
      { have h₁₃ : a = 5 * b, by
        { have h₁₄
end

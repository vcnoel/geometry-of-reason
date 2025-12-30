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

  have h₄ : nat.gcd a 40 = x + 3 ∧ nat.lcm a 40 = x * (x + 3) → nat.gcd a 40 = x + 3 ∧ nat.lcm a 40 = x * (x + 3),
  { intro h,
    exact h },
  have h₅ : a = 8,
  { intro h,
    have h₆ : 8 ≤ a,
    { intro h,
      have h₇ : nat.gcd a 40 = x + 3 ∧ nat.lcm a 40 = x * (x + 3),
      { intro h,
        exact h },
      have h₈ : nat.gcd a 40 = x + 3 ∧ nat.lcm a 40 = x * (x + 3),
      { intro h,
        exact h },
      have h₉ : a ≤ 8,
      { intro h,
        have h₁₀ : nat.gcd a 40 = x + 3 ∧ nat.lcm a 40 = x * (x + 3),
        { intro h,
          exact h },
        have h₁₁ : a ≤ 8,
       
end

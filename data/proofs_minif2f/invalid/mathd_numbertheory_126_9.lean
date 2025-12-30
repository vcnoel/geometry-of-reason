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

  have h₄ : nat.gcd a 40 = x + 3 → nat.lcm a 40 = x * (x + 3) → a = x + 3,
  { intro h,
    have h₅ : a = nat.lcm a 40 * nat.gcd a 40,
    { rw [← nat.lcm_mul_gcd a 40] },
    have h₆ : nat.lcm a 40 = x * (x + 3),
    { exact h.2 },
    have h₇ : a = nat.lcm a 40 * nat.gcd a 40 = (x * (x + 3)) * (x + 3),
    { rw [h₅, h₆] },
    have h₈ : a = x * (x + 3) * (x + 3),
    { rw [mul_comm (x * (x + 3)) (x + 3)] },
    have h₉ : a = x * (x^2 + 3*x + 3),
    { rw [mul_assoc] },
    have h₁₀ : a = x * (x + 3) * (
end

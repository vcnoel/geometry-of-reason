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

  have h4 : ∀ b : ℕ, 0 < b → nat.gcd b 40 = x + 3 ∧ nat.lcm b 40 = x * (x + 3) → a ≤ b,
  { intro b,
    intro h5,
    apply h₃ b h5 },
  have h6 : a ≤ 8,
  { apply h4 8,
    intro h7,
    apply h7 },
  have h8 : a ≤ a,
  { apply le_refl },
  have h9 : a ≤ 8 ∧ a ≤ a,
  { apply and.intro h6 h8 },
  have h10 : a ≤ 8,
  { apply h9 },
  have h11 : a ≤ 8,
  { apply h10 },
  have h12 : 8 ≤ a,
  { apply h3 8 h11 },
  have h13 : a ≤ 8 ∧ 8 ≤ a,
  { apply and.intro h11 h12 },
  have h14 : a = 8,
  { apply le_antisymm h13 },
  exact h14

end

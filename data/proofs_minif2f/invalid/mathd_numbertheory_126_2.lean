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

  have h4 : ∀ b : ℕ, 0 < b → nat.gcd b 40 = x + 3 → nat.lcm b 40 = x * (x + 3),
  from λ b hb h5, h₂,
  have h5 : a ≤ 40,
  from h₃ 40 (by linarith) h4 40 (by linarith) h1,
  have h6 : 1 ≤ a,
  from nat.pos_of_ne_zero (ne_of_lt h0.left),
  have h7 : 1 < a,
  from lt_of_le_of_lt h6 h5,
  have h8 : a = 8,
  from dec_trivial,
  exact h8,

end

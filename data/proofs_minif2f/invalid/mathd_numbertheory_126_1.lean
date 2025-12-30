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

  -- h₀ : 0 < x ∧ 0 < a
  -- h₁ : nat.gcd a 40 = x + 3
  -- h₂ : nat.lcm a 40 = x * (x + 3)
  -- h₃ : ∀ b : ℕ, 0 < b → nat.gcd b 40 = x + 3 ∧ nat.lcm b 40 = x * (x + 3) → a ≤ b

  -- by_cases a = 1
  -- {
  --   -- a = 1
  --   -- by_cases x = 1
  --   -- {
  --   --   -- x = 1
  --   --   -- contradiction
  --   -- }
  --   -- contradiction
  -- }
  -- by_cases x = 1
  -- {
  --   -- x = 1
  --   -- contradiction
  -- }
  -- contradiction

  -- a = 8
  have h₄ : a ≥ 8,
  {
    -- a ≥ 8
    have h₅ : ∀ b : ℕ, 0 < b → nat.gcd b 40 = x + 
end
